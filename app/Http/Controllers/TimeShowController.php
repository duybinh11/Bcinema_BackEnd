<?php

namespace App\Http\Controllers;

use App\Models\MovieModel;
use App\Models\ShowTimeModel;
use Carbon\Carbon;
use GuzzleHttp\Psr7\Response;
use Illuminate\Http\Request;

class TimeShowController extends Controller
{
    public  $now;

    public function __construct()
    {
        $this->now = Carbon::now('Asia/Ho_Chi_Minh');
    }


    public function get_show_time(Request $request)
    {
        $time1 = $request->time;
        $data = MovieModel::whereHas('show_time', function ($show) use ($time1) {
            $show->whereDate('date_time', '=', $time1);
        })->with(['show_time' => function ($show) use ($time1) {
            $show->whereDate('date_time', $time1);
        }])->get();
        return response()->json($data);
    }
}
