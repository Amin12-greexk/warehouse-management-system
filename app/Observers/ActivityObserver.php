<?php
// app/Observers/ActivityObserver.php

namespace App\Observers;

use App\Models\Activity;
use Illuminate\Support\Facades\Log;

class ActivityObserver
{
    public function creating(Activity $activity): void
    {
        // Auto-fill user data if not set
        if (!$activity->user_id && auth()->check()) {
            $activity->user_id = auth()->id();
        }

        if (!$activity->ip_address) {
            $activity->ip_address = request()->ip();
        }

        if (!$activity->user_agent) {
            $activity->user_agent = request()->userAgent();
        }
    }

    public function created(Activity $activity): void
    {
        // Log important activities
        if (in_array($activity->action, ['delete', 'approve', 'reject'])) {
            Log::info("Important activity: {$activity->action}", [
                'user' => $activity->user->name,
                'message' => $activity->message,
                'properties' => $activity->properties,
            ]);
        }
    }
}