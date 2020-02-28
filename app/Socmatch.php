<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Socmatch extends Model
{
    protected $fillable = ['report_overview','report_detail','home_team','away_team','home_score','away_score','match_date','image'];
}
