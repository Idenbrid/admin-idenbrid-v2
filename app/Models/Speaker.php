<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Speaker extends Model
{
    use SoftDeletes;
    use HasFactory;

    public function signboard(){
        return $this->belongsTo(SketchBoard::class,'sketch_board_id');
    }
    public function car(){
        return $this->belongsTo(Car::class);
    }
}
