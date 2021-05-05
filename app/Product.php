<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function Product(){
        return $this->belongsTo('App\Catalog','catalogid');
    }
}
