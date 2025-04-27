<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TeamMember extends Model
{
    protected $casts = [
        'content' => 'array',
    ];
    
    protected $fillable = [
        'name',
        'position',
        'lang_locale',
        'content',
    ];
}
