<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Contact extends Model
{
    protected $fillable = [
        'nombre', 'apellido_paterno', 'apellido_materno','edad', 'numero_telefono', 'user_id'
    ];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function gallery()
    {
        return $this->hasOne('App\Gallery', 'contact_id','id');
    }

    public function address(){

        return $this -> hasOne('App\Address','contact_id','id');
    }

    public function phone(){

        return $this->hasOne('App\Phone','contact_id','id');
    }

    public function references(){ 
        return $this->belongsToMany('App\Contact','App\ContactReference','contact_id','reference_id');//->withPivot('reference_id');
    }
    
    //este lo puedes eliminar
    public function contact_of(){ 
        return $this->belongsToMany('App\Contact','App\ContactReference','id','contact_id');
        /* 
        //return $this->belongsTo('App\ContactReference','App\Contact','contact_id','id');
        //return $this->hasOne('App\Contact','App\ContactReference');
        //('App\ContactReference','App\Contact','reference_id','contact_id'); */
    }
    
}
