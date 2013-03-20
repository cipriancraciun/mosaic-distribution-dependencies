%%------------------------------------------------------------
%%
%% Erlang header file
%% 
%% Target: CosNotification
%% Source: /net/isildur/ldisk/daily_build/r15b03_prebuild_opu_o.2012-12-06_18/otp_src_R15B03/lib/cosNotification/src/CosNotification.idl
%% IC vsn: 4.2.31
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------


-ifndef(COSNOTIFICATION_HRL).
-define(COSNOTIFICATION_HRL, true).


-record('CosNotification_Property', {name, value}).
-record('CosNotification_EventType', {domain_name, type_name}).
-record('CosNotification_PropertyRange', {low_val, high_val}).
-record('CosNotification_NamedPropertyRange', {name, range}).
-record('CosNotification_PropertyError', {code, name, available_range}).
-record('CosNotification_UnsupportedQoS', {'OE_ID'="IDL:omg.org/CosNotification/UnsupportedQoS:1.0", qos_err}).
-record('CosNotification_UnsupportedAdmin', {'OE_ID'="IDL:omg.org/CosNotification/UnsupportedAdmin:1.0", admin_err}).
-record('CosNotification_FixedEventHeader', {event_type, event_name}).
-record('CosNotification_EventHeader', {fixed_header, variable_header}).
-record('CosNotification_StructuredEvent', {header, filterable_data, remainder_of_body}).


-endif.

