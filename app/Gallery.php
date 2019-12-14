<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    protected $fillable = [
        'url','contact_id'
    ];

    public function contact()
    {
        return $this->belongsTo('App\Contact','id');
    }
}
