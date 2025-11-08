<?php
// app/Traits/CustomNotifiable.php

namespace App\Traits;

use App\Models\Notification;

trait CustomNotifiable
{
    public function notifications()
    {
        return $this->morphMany(Notification::class, 'notifiable')
            ->orderBy('created_at', 'desc');
    }

    public function unreadNotifications()
    {
        return $this->notifications()->unread();
    }

    public function notify($type, $title, $message, $data = [])
    {
        return Notification::create([
            'type' => $type,
            'notifiable_type' => static::class,
            'notifiable_id' => $this->id,
            'title' => $title,
            'message' => $message,
            'data' => $data,
        ]);
    }

    public function markAllNotificationsAsRead()
    {
        $this->unreadNotifications()->update(['read_at' => now()]);
    }
}