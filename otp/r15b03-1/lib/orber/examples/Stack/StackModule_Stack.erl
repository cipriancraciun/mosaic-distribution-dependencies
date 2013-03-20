%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: StackModule_Stack
%% Source: /net/isildur/ldisk/daily_build/r15b03_prebuild_opu_o.2012-12-06_18/otp_src_R15B03/lib/orber/examples/Stack/stack.idl
%% IC vsn: 4.2.31
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('StackModule_Stack').
-ic_compiled("4_2_31").


%% Interface functions
-export([pop/1, pop/2, push/2]).
-export([push/3, empty/1, empty/2]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: pop
%% 
%%   Returns: RetVal
%%   Raises:  StackModule::EmptyStack
%%
pop(OE_THIS) ->
    corba:call(OE_THIS, pop, [], ?MODULE).

pop(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, pop, [], ?MODULE, OE_Options).

%%%% Operation: push
%% 
%%   Returns: RetVal
%%
push(OE_THIS, Value) ->
    corba:call(OE_THIS, push, [Value], ?MODULE).

push(OE_THIS, OE_Options, Value) ->
    corba:call(OE_THIS, push, [Value], ?MODULE, OE_Options).

%%%% Operation: empty
%% 
%%   Returns: RetVal
%%
empty(OE_THIS) ->
    corba:call(OE_THIS, empty, [], ?MODULE).

empty(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, empty, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:StackModule/Stack:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(pop) -> 
	{tk_long,[],[]};
oe_tc(push) -> 
	{tk_void,[tk_long],[]};
oe_tc(empty) -> 
	{tk_void,[],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"empty", oe_tc(empty)},
	{"push", oe_tc(push)},
	{"pop", oe_tc(pop)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:StackModule/Stack:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:StackModule/Stack:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:StackModule/Stack:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:StackModule/Stack:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:StackModule/Stack:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:StackModule/Stack:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:StackModule/Stack:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('StackModule_Stack_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('StackModule_Stack_impl', Reason, State).


%%%% Operation: pop
%% 
%%   Returns: RetVal
%%   Raises:  StackModule::EmptyStack
%%
handle_call({_, OE_Context, pop, []}, _, OE_State) ->
  corba:handle_call('StackModule_Stack_impl', pop, [], OE_State, OE_Context, false, false);

%%%% Operation: push
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, push, [Value]}, _, OE_State) ->
  corba:handle_call('StackModule_Stack_impl', push, [Value], OE_State, OE_Context, false, false);

%%%% Operation: empty
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, empty, []}, _, OE_State) ->
  corba:handle_call('StackModule_Stack_impl', empty, [], OE_State, OE_Context, false, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('StackModule_Stack_impl', OldVsn, State, Extra).

