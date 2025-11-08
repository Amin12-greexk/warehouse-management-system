<?php
// app/Traits/HasActivity.php

namespace App\Traits;

use App\Models\Activity;

trait HasActivity
{
    public static function bootHasActivity()
    {
        static::created(function ($model) {
            Activity::logModel('create', $model, "Created {$model->getTable()} record");
        });

        static::updated(function ($model) {
            Activity::logModel('update', $model, "Updated {$model->getTable()} record");
        });

        static::deleted(function ($model) {
            Activity::logModel('delete', $model, "Deleted {$model->getTable()} record");
        });
    }
}