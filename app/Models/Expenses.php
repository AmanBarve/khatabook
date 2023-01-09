<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;

class Expenses extends Model
{
    protected $table = 'expenses';
    protected $primaryKey = 'id';
    public $timestamps = true;
    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'payment_type',
        'payment_method',
        'payment_reason',
        'reason_name', 
        'date',
        'month',
        'year'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */

    // public function online()
    // {
    //     return $online = Expenses::select(DB::raw("SUM(amount) as amount"), DB::raw("DATE_FORMAT(created_at, '%Y-%m') as date"))->where("payment_type", '=', 2)->groupBy(DB::raw("DATE_FORMAT(created_at, '%Y-%m')"))->get();
    // }

    // public function offine()
    // {
    //     return  $online =  Expenses::select(DB::raw("SUM(amount) as amount"), DB::raw("DATE_FORMAT(created_at, '%Y-%m') as date"))->where("payment_type", '=', 1)->groupBy(DB::raw("DATE_FORMAT(created_at, '%Y-%m')"))->get();
    // }

}
