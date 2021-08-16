%%%-------------------------------------------------------------------
%% @doc cs_task public API
%% @end
%%%-------------------------------------------------------------------

-module(cs_task_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    cs_task_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
