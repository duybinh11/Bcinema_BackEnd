<?php

namespace App\Http\Controllers;

use App\Models\MovieModel;
use Carbon\Carbon;
use Exception;
use GuzzleHttp\Psr7\Response;
use Illuminate\Http\Request;

class MovieController extends Controller
{
    public  $now;

    public function __construct()
    {
        $this->now = Carbon::now();
    }

    public function get_movie_show()
    {
        $movies = MovieModel::whereDate('date_start', '<', $this->now)
            ->whereDate('date_end', '>', $this->now)
            ->withAvg('avg_star as avg_rate', 'star_rate',)
            ->get();
        return Response()->json($movies);
    }
    public function get_movie_soon()
    {
        $data = MovieModel::whereDate('date_start', '>', $this->now)->get();
        return Response()->json($data);
    }
}
