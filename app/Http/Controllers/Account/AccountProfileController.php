<?php

namespace App\Http\Controllers\Account;

use App\Models\User;
use Facades\App\Services\UserService;
use App\Http\Controllers\Controller;

class AccountProfileController extends Controller {

    /**
     * get current user profile data
     * @return view
     */
    public function getProfile()
    {
        $user = \Auth::user();
        $user->role = $user->roles->first()->name;
        return response()->json($user);
    }

    /**
     * save user profile data
     * @return view
     */
    public function saveProfile()
    {
        $data = \Request::all();
        $data['ignore_permissions'] = true;
        $user = UserService::load(\Auth::user()->id)->update($data);
        $user->role = $user->roles->first()->name;
        return response()->json($user);
    }


}
