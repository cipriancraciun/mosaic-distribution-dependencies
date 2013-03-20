%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotifyFilter_MappingFilter
%% Source: /net/isildur/ldisk/daily_build/r15b03_prebuild_opu_o.2012-12-06_18/otp_src_R15B03/lib/cosNotification/src/CosNotifyFilter.idl
%% IC vsn: 4.2.31
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotifyFilter_MappingFilter').
-ic_compiled("4_2_31").


%% Interface functions
-export(['_get_constraint_grammar'/1, '_get_constraint_grammar'/2, '_get_value_type'/1]).
-export(['_get_value_type'/2, '_get_default_value'/1, '_get_default_value'/2]).
-export([add_mapping_constraints/2, add_mapping_constraints/3, modify_mapping_constraints/3]).
-export([modify_mapping_constraints/4, get_mapping_constraints/2, get_mapping_constraints/3]).
-export([get_all_mapping_constraints/1, get_all_mapping_constraints/2, remove_all_mapping_constraints/1]).
-export([remove_all_mapping_constraints/2, destroy/1, destroy/2]).
-export([match/2, match/3, match_structured/2]).
-export([match_structured/3, match_typed/2, match_typed/3]).

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



%%%% Operation: '_get_constraint_grammar'
%% 
%%   Returns: RetVal
%%
'_get_constraint_grammar'(OE_THIS) ->
    corba:call(OE_THIS, '_get_constraint_grammar', [], ?MODULE).

'_get_constraint_grammar'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_constraint_grammar', [], ?MODULE, OE_Options).

%%%% Operation: '_get_value_type'
%% 
%%   Returns: RetVal
%%
'_get_value_type'(OE_THIS) ->
    corba:call(OE_THIS, '_get_value_type', [], ?MODULE).

'_get_value_type'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_value_type', [], ?MODULE, OE_Options).

%%%% Operation: '_get_default_value'
%% 
%%   Returns: RetVal
%%
'_get_default_value'(OE_THIS) ->
    corba:call(OE_THIS, '_get_default_value', [], ?MODULE).

'_get_default_value'(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, '_get_default_value', [], ?MODULE, OE_Options).

%%%% Operation: add_mapping_constraints
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidConstraint, CosNotifyFilter::InvalidValue
%%
add_mapping_constraints(OE_THIS, Pair_list) ->
    corba:call(OE_THIS, add_mapping_constraints, [Pair_list], ?MODULE).

add_mapping_constraints(OE_THIS, OE_Options, Pair_list) ->
    corba:call(OE_THIS, add_mapping_constraints, [Pair_list], ?MODULE, OE_Options).

%%%% Operation: modify_mapping_constraints
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidConstraint, CosNotifyFilter::InvalidValue, CosNotifyFilter::ConstraintNotFound
%%
modify_mapping_constraints(OE_THIS, Del_list, Modify_list) ->
    corba:call(OE_THIS, modify_mapping_constraints, [Del_list, Modify_list], ?MODULE).

modify_mapping_constraints(OE_THIS, OE_Options, Del_list, Modify_list) ->
    corba:call(OE_THIS, modify_mapping_constraints, [Del_list, Modify_list], ?MODULE, OE_Options).

%%%% Operation: get_mapping_constraints
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::ConstraintNotFound
%%
get_mapping_constraints(OE_THIS, Id_list) ->
    corba:call(OE_THIS, get_mapping_constraints, [Id_list], ?MODULE).

get_mapping_constraints(OE_THIS, OE_Options, Id_list) ->
    corba:call(OE_THIS, get_mapping_constraints, [Id_list], ?MODULE, OE_Options).

%%%% Operation: get_all_mapping_constraints
%% 
%%   Returns: RetVal
%%
get_all_mapping_constraints(OE_THIS) ->
    corba:call(OE_THIS, get_all_mapping_constraints, [], ?MODULE).

get_all_mapping_constraints(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_all_mapping_constraints, [], ?MODULE, OE_Options).

%%%% Operation: remove_all_mapping_constraints
%% 
%%   Returns: RetVal
%%
remove_all_mapping_constraints(OE_THIS) ->
    corba:call(OE_THIS, remove_all_mapping_constraints, [], ?MODULE).

remove_all_mapping_constraints(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, remove_all_mapping_constraints, [], ?MODULE, OE_Options).

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
destroy(OE_THIS) ->
    corba:call(OE_THIS, destroy, [], ?MODULE).

destroy(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, destroy, [], ?MODULE, OE_Options).

%%%% Operation: match
%% 
%%   Returns: RetVal, Result_to_set
%%   Raises:  CosNotifyFilter::UnsupportedFilterableData
%%
match(OE_THIS, Filterable_data) ->
    corba:call(OE_THIS, match, [Filterable_data], ?MODULE).

match(OE_THIS, OE_Options, Filterable_data) ->
    corba:call(OE_THIS, match, [Filterable_data], ?MODULE, OE_Options).

%%%% Operation: match_structured
%% 
%%   Returns: RetVal, Result_to_set
%%   Raises:  CosNotifyFilter::UnsupportedFilterableData
%%
match_structured(OE_THIS, Filterable_data) ->
    corba:call(OE_THIS, match_structured, [Filterable_data], ?MODULE).

match_structured(OE_THIS, OE_Options, Filterable_data) ->
    corba:call(OE_THIS, match_structured, [Filterable_data], ?MODULE, OE_Options).

%%%% Operation: match_typed
%% 
%%   Returns: RetVal, Result_to_set
%%   Raises:  CosNotifyFilter::UnsupportedFilterableData
%%
match_typed(OE_THIS, Filterable_data) ->
    corba:call(OE_THIS, match_typed, [Filterable_data], ?MODULE).

match_typed(OE_THIS, OE_Options, Filterable_data) ->
    corba:call(OE_THIS, match_typed, [Filterable_data], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosNotifyFilter/MappingFilter:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc('_get_constraint_grammar') -> 
	{{tk_string,0},[],[]};
oe_tc('_get_value_type') -> 
	{tk_TypeCode,[],[]};
oe_tc('_get_default_value') -> 
	{tk_any,[],[]};
oe_tc(add_mapping_constraints) -> 
	{{tk_sequence,
             {tk_struct,
                 "IDL:omg.org/CosNotifyFilter/MappingConstraintInfo:1.0",
                 "MappingConstraintInfo",
                 [{"constraint_expression",
                   {tk_struct,
                       "IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                       "ConstraintExp",
                       [{"event_types",
                         {tk_sequence,
                             {tk_struct,
                                 "IDL:omg.org/CosNotification/EventType:1.0",
                                 "EventType",
                                 [{"domain_name",{tk_string,0}},
                                  {"type_name",{tk_string,0}}]},
                             0}},
                        {"constraint_expr",{tk_string,0}}]}},
                  {"constraint_id",tk_long},
                  {"value",tk_any}]},
             0},
         [{tk_sequence,
              {tk_struct,
                  "IDL:omg.org/CosNotifyFilter/MappingConstraintPair:1.0",
                  "MappingConstraintPair",
                  [{"constraint_expression",
                    {tk_struct,
                        "IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                        "ConstraintExp",
                        [{"event_types",
                          {tk_sequence,
                              {tk_struct,
                                  "IDL:omg.org/CosNotification/EventType:1.0",
                                  "EventType",
                                  [{"domain_name",{tk_string,0}},
                                   {"type_name",{tk_string,0}}]},
                              0}},
                         {"constraint_expr",{tk_string,0}}]}},
                   {"result_to_set",tk_any}]},
              0}],
         []};
oe_tc(modify_mapping_constraints) -> 
	{tk_void,
            [{tk_sequence,tk_long,0},
             {tk_sequence,
                 {tk_struct,
                     "IDL:omg.org/CosNotifyFilter/MappingConstraintInfo:1.0",
                     "MappingConstraintInfo",
                     [{"constraint_expression",
                       {tk_struct,
                           "IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                           "ConstraintExp",
                           [{"event_types",
                             {tk_sequence,
                                 {tk_struct,
                                     "IDL:omg.org/CosNotification/EventType:1.0",
                                     "EventType",
                                     [{"domain_name",{tk_string,0}},
                                      {"type_name",{tk_string,0}}]},
                                 0}},
                            {"constraint_expr",{tk_string,0}}]}},
                      {"constraint_id",tk_long},
                      {"value",tk_any}]},
                 0}],
            []};
oe_tc(get_mapping_constraints) -> 
	{{tk_sequence,
             {tk_struct,
                 "IDL:omg.org/CosNotifyFilter/MappingConstraintInfo:1.0",
                 "MappingConstraintInfo",
                 [{"constraint_expression",
                   {tk_struct,
                       "IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                       "ConstraintExp",
                       [{"event_types",
                         {tk_sequence,
                             {tk_struct,
                                 "IDL:omg.org/CosNotification/EventType:1.0",
                                 "EventType",
                                 [{"domain_name",{tk_string,0}},
                                  {"type_name",{tk_string,0}}]},
                             0}},
                        {"constraint_expr",{tk_string,0}}]}},
                  {"constraint_id",tk_long},
                  {"value",tk_any}]},
             0},
         [{tk_sequence,tk_long,0}],
         []};
oe_tc(get_all_mapping_constraints) -> 
	{{tk_sequence,
             {tk_struct,
                 "IDL:omg.org/CosNotifyFilter/MappingConstraintInfo:1.0",
                 "MappingConstraintInfo",
                 [{"constraint_expression",
                   {tk_struct,
                       "IDL:omg.org/CosNotifyFilter/ConstraintExp:1.0",
                       "ConstraintExp",
                       [{"event_types",
                         {tk_sequence,
                             {tk_struct,
                                 "IDL:omg.org/CosNotification/EventType:1.0",
                                 "EventType",
                                 [{"domain_name",{tk_string,0}},
                                  {"type_name",{tk_string,0}}]},
                             0}},
                        {"constraint_expr",{tk_string,0}}]}},
                  {"constraint_id",tk_long},
                  {"value",tk_any}]},
             0},
         [],[]};
oe_tc(remove_all_mapping_constraints) -> 
	{tk_void,[],[]};
oe_tc(destroy) -> 
	{tk_void,[],[]};
oe_tc(match) -> 
	{tk_boolean,[tk_any],[tk_any]};
oe_tc(match_structured) -> 
	{tk_boolean,
            [{tk_struct,"IDL:omg.org/CosNotification/StructuredEvent:1.0",
                 "StructuredEvent",
                 [{"header",
                   {tk_struct,"IDL:omg.org/CosNotification/EventHeader:1.0",
                       "EventHeader",
                       [{"fixed_header",
                         {tk_struct,
                             "IDL:omg.org/CosNotification/FixedEventHeader:1.0",
                             "FixedEventHeader",
                             [{"event_type",
                               {tk_struct,
                                   "IDL:omg.org/CosNotification/EventType:1.0",
                                   "EventType",
                                   [{"domain_name",{tk_string,0}},
                                    {"type_name",{tk_string,0}}]}},
                              {"event_name",{tk_string,0}}]}},
                        {"variable_header",
                         {tk_sequence,
                             {tk_struct,
                                 "IDL:omg.org/CosNotification/Property:1.0",
                                 "Property",
                                 [{"name",{tk_string,0}},{"value",tk_any}]},
                             0}}]}},
                  {"filterable_data",
                   {tk_sequence,
                       {tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                           "Property",
                           [{"name",{tk_string,0}},{"value",tk_any}]},
                       0}},
                  {"remainder_of_body",tk_any}]}],
            [tk_any]};
oe_tc(match_typed) -> 
	{tk_boolean,
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                     "Property",
                     [{"name",{tk_string,0}},{"value",tk_any}]},
                 0}],
            [tk_any]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"match_typed", oe_tc(match_typed)},
	{"match_structured", oe_tc(match_structured)},
	{"match", oe_tc(match)},
	{"destroy", oe_tc(destroy)},
	{"remove_all_mapping_constraints", oe_tc(remove_all_mapping_constraints)},
	{"get_all_mapping_constraints", oe_tc(get_all_mapping_constraints)},
	{"get_mapping_constraints", oe_tc(get_mapping_constraints)},
	{"modify_mapping_constraints", oe_tc(modify_mapping_constraints)},
	{"add_mapping_constraints", oe_tc(add_mapping_constraints)},
	{"_get_default_value", oe_tc('_get_default_value')},
	{"_get_value_type", oe_tc('_get_value_type')},
	{"_get_constraint_grammar", oe_tc('_get_constraint_grammar')}].




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
    "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosNotifyFilter/MappingFilter:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosNotifyFilter_MappingFilter_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosNotifyFilter_MappingFilter_impl', Reason, State).


%%%% Operation: '_get_constraint_grammar'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_constraint_grammar', []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', '_get_constraint_grammar', [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: '_get_value_type'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_value_type', []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', '_get_value_type', [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: '_get_default_value'
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, '_get_default_value', []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', '_get_default_value', [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: add_mapping_constraints
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidConstraint, CosNotifyFilter::InvalidValue
%%
handle_call({OE_THIS, OE_Context, add_mapping_constraints, [Pair_list]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', add_mapping_constraints, [Pair_list], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: modify_mapping_constraints
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::InvalidConstraint, CosNotifyFilter::InvalidValue, CosNotifyFilter::ConstraintNotFound
%%
handle_call({OE_THIS, OE_Context, modify_mapping_constraints, [Del_list, Modify_list]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', modify_mapping_constraints, [Del_list, Modify_list], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_mapping_constraints
%% 
%%   Returns: RetVal
%%   Raises:  CosNotifyFilter::ConstraintNotFound
%%
handle_call({OE_THIS, OE_Context, get_mapping_constraints, [Id_list]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', get_mapping_constraints, [Id_list], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_all_mapping_constraints
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_all_mapping_constraints, []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', get_all_mapping_constraints, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: remove_all_mapping_constraints
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, remove_all_mapping_constraints, []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', remove_all_mapping_constraints, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: destroy
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, destroy, []}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', destroy, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: match
%% 
%%   Returns: RetVal, Result_to_set
%%   Raises:  CosNotifyFilter::UnsupportedFilterableData
%%
handle_call({OE_THIS, OE_Context, match, [Filterable_data]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', match, [Filterable_data], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: match_structured
%% 
%%   Returns: RetVal, Result_to_set
%%   Raises:  CosNotifyFilter::UnsupportedFilterableData
%%
handle_call({OE_THIS, OE_Context, match_structured, [Filterable_data]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', match_structured, [Filterable_data], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: match_typed
%% 
%%   Returns: RetVal, Result_to_set
%%   Raises:  CosNotifyFilter::UnsupportedFilterableData
%%
handle_call({OE_THIS, OE_Context, match_typed, [Filterable_data]}, _, OE_State) ->
  corba:handle_call('CosNotifyFilter_MappingFilter_impl', match_typed, [Filterable_data], OE_State, OE_Context, OE_THIS, false);



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
handle_info(Info, State) ->
    corba:handle_info('CosNotifyFilter_MappingFilter_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosNotifyFilter_MappingFilter_impl', OldVsn, State, Extra).

