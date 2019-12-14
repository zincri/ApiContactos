<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactReference extends Model
{
    protected $fillable = [
        'reference_id',
        'contact_id',
    ];
    
    public function of_contact(){ 
        return $this->belongsTo('App\Contact','contact_id');
    }
    public function reference_is(){ 
        return $this->belongsTo('App\Contact','reference_id');
    }
}
