<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShowTimeModel extends Model
{
    use HasFactory;
    protected $table = "show_time";
    public $timestamps = false;

    public function movie()
    {
        return $this->belongsTo(MovieModel::class, 'id_movie', 'id');
    }
    public function ticket()
    {
        return $this->hasMany(TicketModel::class, 'id_show_time', 'id');
    }
}
