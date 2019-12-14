<?php

namespace App;
use App\PhonesType;

use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
    protected $fillable = [
        'telefono',
        'type_id',
        'contact_id',
    ];

    public function contact(){
        return $this->belongsTo('App\Contact');
    }

    public function phones_type(){
        return $this->belongsTo(PhonesType::class,'type_id');
    }
}
