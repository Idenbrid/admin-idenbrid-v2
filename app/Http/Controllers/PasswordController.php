<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class PasswordController extends Controller
{
    public function index()
    {
        return view('admin.setting.password');
    }

    public function store(Request $request)
    {
        $user           = User::findOrFail(Auth::id());
        $hashedPassword = $user->password;

                $request->validate([
                    'current_password' => ['required'],
                    'new_password' => ['required', 'min:8'],
                    'confirm_password'   => 'min:8|required_with:new_password|same:new_password',

                ]);
                if (isset($request->new_password))
                {
                    if ($this->checkPassword($request->current_password, $hashedPassword) == true)
                    {
                        $user->password = Hash::make($request->new_password);
                        $user->save();
                        return response()->json(['changed' => true]);
                    }
                    else
                    {
                        return response()->json(['error' => "Your current password is incorrect"]);
                    }
                }
    }
    public function checkPassword($current_password , $hashedPassword)
    {
        if (Hash::check($current_password , $hashedPassword))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}
