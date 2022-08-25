<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChuyenBay extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'ChuyenBay';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'macb',
        'tencb',
        'ngaydi',
        'sogheloai1',
        'giagheloai1',
        'sogheloai2',
        'giagheloai2',
    ];

    public $timestamps = false;
}
