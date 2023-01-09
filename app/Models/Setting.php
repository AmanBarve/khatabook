<?php
/*
* Setting.php - Model file
*
* This file is part of the Setting component.
*-----------------------------------------------------------------------------*/

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Cache;

class Setting extends Model
{
    /**
     * @var string - The database table used by the model.
     */
    protected $table = 'settings';

    /**
     * Caching Ids related to this model which may need to clear on add/update/delete.
     *
     * @var string
     *----------------------------------------------------------------------- */
    protected $cacheIds = [
        'cache.storeSetting.namevalue',
        'cache.storeSetting.all',
        'cache.storeSetting.namevalue.lists',
        'cache.storeSetting.currencyRate'
    ];

    /**
     * @var array - The attributes that should be casted to native types..
     */
    protected $casts = [
        'id' => 'integer',
        'store_name' => 'string',
        'contact_email' => 'string',
    ];

    /**
     * @var array - The attributes that are mass assignable.
     */
    protected $fillable = [
        'id' => 'integer',
        'store_name' => 'string',
        'contact_email' => 'string',
    ];
}
