<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
    protected $fillable = ['profile_picture','first_name','middle_name','last_name','shirt_number','position'
                            ,'former_team','date_of_birth','biography'];
}
