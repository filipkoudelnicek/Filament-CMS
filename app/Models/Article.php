<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $casts = [
        'content' => 'array',
        'publish_time' => 'datetime',
    ];

    protected $fillable = [
        'slug',
        'lang_locale',
        'user_id',
        'title',
        'content',
        'active',
        'publish_time',
    ];

    public function language()
    {
        return $this->belongsTo(Language::class, 'lang_locale', 'locale');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
