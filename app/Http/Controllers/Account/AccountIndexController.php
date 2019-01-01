<?php
namespace App\Http\Controllers\Account;

use App\Models\User;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;

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
            'roles' => $user->company->roles,
        ];
        return view('layouts.account', $data);
    }

    public function externalCall()
    {
        $data = \Request::all();
        $base = 'https://ep-apipoc101-int-secure.azurewebsites.net/EpPocApi/1.0.1/';
        $endpoint = $base . $data['endpoint'];
        
        if ( $data['method'] == 'get' && !empty($data['data']) ) {
            $endpoint .= '?' . http_build_query($data['data']);
        }

        // get access token if it's set
        if ( session('access_token') ) {
            $access_token = session('access_token');
        } else {
            $access_token = $this->getAccessToken();
        }
        
        // make api call now
        try {
            $response = $this->makeCall($endpoint, $data, $access_token);
        } catch ( \Exception $e ) {
            // token is expired, get a new one
            if ( $e->getCode() == 401 ) {
                $access_token = $this->getAccessToken();
                $response = $this->makeCall($endpoint, $data, $access_token);
            } else {
                fail($e->getMessage());
            }
        }

        return response()->json($response);
    }

    protected function makeCall($endpoint, $data, $access_token)
    {
        $url_parts = parse_url($_SERVER['HTTP_REFERER']);
        $origin = $url_parts['scheme'] . '://' . $url_parts['host'] . (!empty($url_parts['port']) ? ':' . $url_parts['port'] : '');
        $client = new Client();
        $response = $client->request($data['method'], $endpoint, [
            'headers' => [
                'Origin' => $origin,
                'authorization' => 'bearer ' . $access_token
            ],
        ]);
        $body = $response->getBody();
        $json = json_decode((string) $body, true);
        return $json;
    }

    protected function getAccessToken()
    {

        // TODO: do these change for each client login?
        $tenant = 'b4ca5b14-c6b7-4903-99a0-115d95fcaf56';
        $client_id = 'f5f48366-f0dc-4e5c-bea2-51d7c31caa0f';
        $scope = 'https%3A%2F%2Fb4ca5b14-c6b7-4903-99a0-115d95fcaf56%2FEPApiPoc%2F.default';
        $client_secret = '8%2FoFv3q%3E%29vL%24jx%29if%21Kyx2%26U7%3FE%25%3BR';
        $grant_type = 'client_credentials';

        // get our access token
        $client = new Client();
        $response = $client->request('POST', 'https://login.microsoftonline.com/' . $tenant . '/oauth2/v2.0/token', [
            'body' => "client_id={$client_id}&scope={$scope}&client_secret={$client_secret}&grant_type={$grant_type}"
        ]);
        $body = $response->getBody();
        $json = json_decode((string) $body, true);
        if ( !isset($json['access_token']) || empty($json['access_token']) ) {
            fail('Unable to obtain access token');
        }
        session(['access_token' => $json['access_token']]);
        return $json['access_token'];
    }

}