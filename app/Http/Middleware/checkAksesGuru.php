<?php

namespace App\Http\Middleware;

use Closure;

class checkAksesGuru
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $akses_sebagai)
    {
        if (session('akses_sebagai') ==  $akses_sebagai) {
            return $next($request);
        }
        return redirect('/unauthorized');
    }
}
