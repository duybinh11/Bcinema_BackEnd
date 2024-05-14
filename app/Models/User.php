<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = "users";
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public $timestamps = false;
    public function getJWTCustomClaims()
    {
        return [];
    }

    protected $fillable = [
        'old',
        'address',
        'email',
        'password',
        'username',
        'phone'
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        // 'password' => 'hashed',
        // 'password' => 'string',
    ];

    public function ticket()
    {
        return $this->hasMany(TicketModel::class, 'id_user', 'id');
    }
}
