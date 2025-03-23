<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    protected $casts = [
        'content' => 'array',
    ];

    protected $fillable = [
        'slug',
        'lang_locale',
        'title',
        'content',
        'type',
        'active',
        'in_menu',
        'in_menu_order',
        'in_menu_title',
    ];

    public function language()
    {
        return $this->belongsTo(Language::class, 'lang_locale', 'locale');
    }
}
