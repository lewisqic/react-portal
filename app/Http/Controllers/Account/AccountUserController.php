<?php

namespace App\Http\Controllers\Account;

use App\Models\User;
use App\Models\Role;
use Facades\App\Services\UserService;
use App\Http\Controllers\Controller;


class AccountUserController extends Controller
{

    /**
     * Return list of users for a company
     * @param bool $json
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function list($company_id = null, $json = true)
    {
        $data = \Request::all();
        $company_id = $data['company_id'] ?? $company_id;
        $users = User::where('company_id', $company_id)->orderBy('created_at', 'DESC')->get();
        $users->load('roles');
        return $json ? response()->json($users) : $users;
    }

    /**
     * Create new user
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store()
    {
        $data = \Request::all();
        User::setGuardName(User::$types[User::MEMBER_ID]['route'] . '-' . $data['company_id']);
        $data['type'] = User::MEMBER_ID;
        $data['roles'] = [$data['role']];
        $user = UserService::create($data);
        return response()->json(['user' => $user, 'list' => $this->list($user->company_id, false)]);
    }

    /**
     * Update user
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update()
    {
        $data = \Request::all();
        $data['roles'] = [$data['role']];
        $user = UserService::load($data['id'])->update($data);
        return response()->json(['user' => $user, 'list' => $this->list($user->company_id, false)]);
    }

    /**
     * Delete user
     *
     * @return redirect
     */
    public function destroy($id)
    {
        if ( $id == \Auth::user()->id ) {
            fail('Currently logged in user cannot be deleted.');
        }
        $user = UserService::delete($id);
        return response()->json(['user' => $user, 'list' => $this->list($user->company_id, false)]);
    }

    /**
     * Restore user
     *
     * @return redirect
     */
    public function restore($id)
    {
        $user = UserService::restore($id);
    }


}
