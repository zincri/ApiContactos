<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Phone;
class PhonesType extends Model
{
    protected $fillable = [
        'nombre_tipo',
    ];

    public function phone(){
        return $this->hasMany(Phone::class,'type_id','id');
    }
}
