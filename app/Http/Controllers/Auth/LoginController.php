<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/contacts';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    /* public function __construct()
    {
        $this->middleware('guest')->except('logout');
        
    } */
    public function __construct()
    {
        $this->middleware('jwt', ['except' => ['login']]);
    }


    /* public function login(Request $request){
        //$request =  request();
        $credentials=$this->validate($request,[
            'email' => 'required|email|string',
            'password' => 'required|string'
        ]);
        $email = $request->get('email');
        $password = $request->get('password');
            
        if(Auth::attempt($credentials)){
            //return response()->json(Auth::user(),200);

            $token = Str::random(80);
            $request->user()->forceFill([
                'api_token' => hash('sha256', $token),
            ])->save();
            return response()->json([
                'usuario' => Auth::user(),
                'access_token' => $token,
                'token_type'   => 'Bearer',
            ],200);
        }
        else{
            
            return response()->json("Datos incorrectos",401);
        }
    } */

    //JWT
    public function login()
    {
        $credentials = request(['email', 'password']);
        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }
        return $this->respondWithToken($token);
    }

    //JWT
    public function me()
    {
        return response()->json(auth()->user());
    }

    //JWT
    public function payload()
    {
        return response()->json(auth()->payload());
    }

    //JWT
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }


    
    /* public function check(){
        if(Auth::check()){
            return response()->json(Auth::user(),200);

        }else{
            return response()->json("Estas desloggeado",401);
        }
        
    } */
    
    /* public function logout(Request $request){
        $logout = Auth::logout();
        return response()->json("Estas desloggeado",200);
        //return response()->json($request,200);
        //$request->user()->token()->revoke();
        
    } */


    //JWT
    public function logout()
    {
        auth()->logout();
        return response()->json(['message' => 'Successfully logged out']);
    }


    //JWT
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user(),
        ]);
    }
}
