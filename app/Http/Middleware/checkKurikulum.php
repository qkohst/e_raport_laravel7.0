<?php

namespace App\Http\Middleware;

use Closure;

class checkKurikulum
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $kurikulum)
    {
        if (session('kurikulum') ==  $kurikulum) {
            return $next($request);
        }
        return redirect('/unauthorized');
    }
}
