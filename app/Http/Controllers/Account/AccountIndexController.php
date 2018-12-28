<?php
namespace App\Http\Controllers\Account;

use App\Models\User;
use App\Http\Controllers\Controller;

class AccountIndexController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show our dashboard page
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function showPortal()
    {
        $user = \Auth::user();
        $user->role = $user->roles->first()->name;
        $data = [
            'user' => $user,
            'roles' => $user->company->roles
        ];
        return view('layouts.account', $data);
    }

}