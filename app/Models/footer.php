<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class footer extends Model
{
    use HasFactory;

    protected $fillable = [
        'number','short_description','address','email','facebook','twitter','copyright'
    ];

}
