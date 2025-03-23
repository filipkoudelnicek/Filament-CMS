<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Language extends Model
{
    protected $fillable = [
        'name',
        'locale',
        'active',
        'content',
    ];

    protected $casts = [
        'active' => 'boolean',
    ];
}
