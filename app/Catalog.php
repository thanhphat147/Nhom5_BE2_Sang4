<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Catalog extends Model
{
    public function product()
    {
        return $this->hasMany('App\Product','catalogid','id');
    }
}
