<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = [
        'calle',
        'numero_interior',
        'numero_exterior',
        'colonia',
        'codigo_postal',
        'municipio',
        'latitude',
        'longitude',
        'contact_id',
        
    ];
    public function contact(){

        return $this ->belongsTo('App\Contact');
    }
}
