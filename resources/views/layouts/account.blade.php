<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Account | React Portal</title>

    <link rel="stylesheet" href="{{ mix('css/account.css') }}">

</head>
<body>

<div id="account"></div>

<script type="text/javascript">
    window.loadData = {
        user: {!! $user->makeHidden('password')->toJson() !!},
        roles: {!! $roles->toJson() !!},
        subscription: {!! $user->company->subscription->toJson() !!}
    }
</script>
{!! Js::authorizeNetConfig() !!}
<script type="text/javascript" src="{{ env('APP_ENV') == 'production' ? 'https://js.authorize.net/v1/Accept.js' : 'https://jstest.authorize.net/v1/Accept.js' }}" charset="utf-8"></script>
<script src="{{ mix('js/account.js') }}"></script>

</body>
</html>
