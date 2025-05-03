<?php

namespace App\Services;

use Awcodes\Curator\Models\Media;

class MediaService
{
    /**
     * Získá URL obrázku podle jeho ID z Curator
     */
    public static function getMediaUrl($mediaId)
    {
        if (!$mediaId) {
            return null;
        }
        
        $media = Media::find($mediaId);
        return $media ? '/storage/' . $media->path : null;
    }
}