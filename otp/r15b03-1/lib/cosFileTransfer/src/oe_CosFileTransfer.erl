%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_CosFileTransfer
%% Source: /net/isildur/ldisk/daily_build/r15b03_prebuild_opu_o.2012-12-06_18/otp_src_R15B03/lib/cosFileTransfer/src/CosFileTransfer.idl
%% IC vsn: 4.2.31
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_CosFileTransfer).
-ic_compiled("4_2_31").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:omg.org/CosFileTransfer:1.0", "CosFileTransfer", "1.0"),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/Istring:1.0", "Istring", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/ProtocolAddress:1.0", "ProtocolAddress", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/ContentType:1.0", "ContentType", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long)),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/FTAM_1:1.0", "FTAM_1", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,1}),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/FTAM_2:1.0", "FTAM_2", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,2}),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/FTAM_3:1.0", "FTAM_3", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,3}),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/FTAM_4:1.0", "FTAM_4", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,4}),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/FTAM_5:1.0", "FTAM_5", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,5}),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/NBS_9:1.0", "NBS_9", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,6}),

    orber_ifr:'ModuleDef_create_constant'(_OE_1, "IDL:omg.org/CosFileTransfer/INTAP_1:1.0", "INTAP_1", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), {tk_long,7}),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosFileTransfer/CommandNotImplementedException:1.0", "CommandNotImplementedException", "1.0", [#structmember{name="reason", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}]),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosFileTransfer/SessionException:1.0", "SessionException", "1.0", [#structmember{name="reason", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}]),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosFileTransfer/TransferException:1.0", "TransferException", "1.0", [#structmember{name="reason", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}]),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0", "FileNotFoundException", "1.0", [#structmember{name="reason", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}]),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosFileTransfer/RequestFailureException:1.0", "RequestFailureException", "1.0", [#structmember{name="reason", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}]),

    orber_ifr:'ModuleDef_create_exception'(_OE_1, "IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0", "IllegalOperationException", "1.0", [#structmember{name="reason", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}]),

    orber_ifr:'ModuleDef_create_struct'(_OE_1, "IDL:omg.org/CosFileTransfer/AccessLevel:1.0", "AccessLevel", "1.0", [#structmember{name="read", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="insert", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="replace", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="extend", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="erase", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="read_attr", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="change_attr", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}, #structmember{name="delete", type=tk_boolean, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean)}]),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/ProtocolAddressList:1.0", "ProtocolAddressList", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0})),

    orber_ifr:'ModuleDef_create_struct'(_OE_1, "IDL:omg.org/CosFileTransfer/ProtocolSupport:1.0", "ProtocolSupport", "1.0", [#structmember{name="protocol_name", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})}, #structmember{name="addresses", type={tk_sequence,{tk_string,0},0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0})}]),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/SupportedProtocolAddresses:1.0", "SupportedProtocolAddresses", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,
                                               {tk_struct,
                                                "IDL:omg.org/CosFileTransfer/ProtocolSupport:1.0",
                                                "ProtocolSupport",
                                                [{"protocol_name",
                                                  {tk_string,0}},
                                                 {"addresses",
                                                  {tk_sequence,
                                                   {tk_string,0},
                                                   0}}]},
                                               0})),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/FileName:1.0", "FileName", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0})),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/FileNameList:1.0", "FileNameList", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0})),

    _OE_2 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosFileTransfer/File:1.0", "File", "1.0", [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosPropertyService/PropertySet:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosPropertyService/PropertySetDef:1.0")]),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosFileTransfer/File/name:1.0", "name", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosFileTransfer/File/complete_file_name:1.0", "complete_file_name", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosFileTransfer/File/parent:1.0", "parent", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                               "Directory"}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_2, "IDL:omg.org/CosFileTransfer/File/associated_session:1.0", "associated_session", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/FileTransferSession:1.0",
                                               "FileTransferSession"}), 'ATTR_READONLY'),

    orber_ifr:'ModuleDef_create_enum'(_OE_1, "IDL:omg.org/CosFileTransfer/FileType:1.0", "FileType", "1.0", ["nfile","ndirectory"]),

    orber_ifr:'ModuleDef_create_struct'(_OE_1, "IDL:omg.org/CosFileTransfer/FileWrapper:1.0", "FileWrapper", "1.0", [#structmember{name="the_file", type={tk_objref,
                                     "IDL:omg.org/CosFileTransfer/File:1.0",
                                     "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"})}, #structmember{name="file_type", type={tk_enum,
                                      "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                      "FileType",
                                      ["nfile","ndirectory"]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                               "FileType",
                                               ["nfile","ndirectory"]})}]),

    orber_ifr:'ModuleDef_create_alias'(_OE_1, "IDL:omg.org/CosFileTransfer/FileList:1.0", "FileList", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,
                                               {tk_struct,
                                                "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                                "FileWrapper",
                                                [{"the_file",
                                                  {tk_objref,
                                                   "IDL:omg.org/CosFileTransfer/File:1.0",
                                                   "File"}},
                                                 {"file_type",
                                                  {tk_enum,
                                                   "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                                   "FileType",
                                                   ["nfile","ndirectory"]}}]},
                                               0})),

    _OE_3 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosFileTransfer/Directory:1.0", "Directory", "1.0", [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosPropertyService/PropertySet:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosPropertyService/PropertySetDef:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/File:1.0")]),

    orber_ifr:'InterfaceDef_create_operation'(_OE_3, "IDL:omg.org/CosFileTransfer/Directory/list:1.0", "list", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="fi", type={tk_objref,
                                       "IDL:omg.org/CosFileTransfer/FileIterator:1.0",
                                       "FileIterator"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/FileIterator:1.0",
                                               "FileIterator"}), mode='PARAM_OUT'}
, #parameterdescription{name="fl", type={tk_sequence,
                                       {tk_struct,
                                        "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                        "FileWrapper",
                                        [{"the_file",
                                          {tk_objref,
                                           "IDL:omg.org/CosFileTransfer/File:1.0",
                                           "File"}},
                                         {"file_type",
                                          {tk_enum,
                                           "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                           "FileType",
                                           ["nfile","ndirectory"]}}]},
                                       0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,
                                               {tk_struct,
                                                "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                                "FileWrapper",
                                                [{"the_file",
                                                  {tk_objref,
                                                   "IDL:omg.org/CosFileTransfer/File:1.0",
                                                   "File"}},
                                                 {"file_type",
                                                  {tk_enum,
                                                   "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                                   "FileType",
                                                   ["nfile","ndirectory"]}}]},
                                               0}), mode='PARAM_OUT'}
, #parameterdescription{name="how_many", type=tk_ulong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulong), mode='PARAM_IN'}
], [], []),

    _OE_4 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosFileTransfer/FileIterator:1.0", "FileIterator", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosFileTransfer/FileIterator/next_one:1.0", "next_one", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean), 'OP_NORMAL', [#parameterdescription{name="f", type={tk_struct,
                                      "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                      "FileWrapper",
                                      [{"the_file",
                                        {tk_objref,
                                         "IDL:omg.org/CosFileTransfer/File:1.0",
                                         "File"}},
                                       {"file_type",
                                        {tk_enum,
                                         "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                         "FileType",
                                         ["nfile","ndirectory"]}}]}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                               "FileWrapper",
                                               [{"the_file",
                                                 {tk_objref,
                                                  "IDL:omg.org/CosFileTransfer/File:1.0",
                                                  "File"}},
                                                {"file_type",
                                                 {tk_enum,
                                                  "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                                  "FileType",
                                                  ["nfile","ndirectory"]}}]}), mode='PARAM_OUT'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosFileTransfer/FileIterator/next_n:1.0", "next_n", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_boolean), 'OP_NORMAL', [#parameterdescription{name="fl", type={tk_sequence,
                                       {tk_struct,
                                        "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                        "FileWrapper",
                                        [{"the_file",
                                          {tk_objref,
                                           "IDL:omg.org/CosFileTransfer/File:1.0",
                                           "File"}},
                                         {"file_type",
                                          {tk_enum,
                                           "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                           "FileType",
                                           ["nfile","ndirectory"]}}]},
                                       0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,
                                               {tk_struct,
                                                "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                                "FileWrapper",
                                                [{"the_file",
                                                  {tk_objref,
                                                   "IDL:omg.org/CosFileTransfer/File:1.0",
                                                   "File"}},
                                                 {"file_type",
                                                  {tk_enum,
                                                   "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                                   "FileType",
                                                   ["nfile","ndirectory"]}}]},
                                               0}), mode='PARAM_OUT'}
, #parameterdescription{name="how_many", type=tk_ulong, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_ulong), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_4, "IDL:omg.org/CosFileTransfer/FileIterator/destroy:1.0", "destroy", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    _OE_5 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosFileTransfer/FileTransferSession:1.0", "FileTransferSession", "1.0", []),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/protocols_supported:1.0", "protocols_supported", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,
                                               {tk_struct,
                                                "IDL:omg.org/CosFileTransfer/ProtocolSupport:1.0",
                                                "ProtocolSupport",
                                                [{"protocol_name",
                                                  {tk_string,0}},
                                                 {"addresses",
                                                  {tk_sequence,
                                                   {tk_string,0},
                                                   0}}]},
                                               0}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/set_directory:1.0", "set_directory", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="new_directory", type={tk_objref,
                                                  "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                                  "Directory"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                               "Directory"}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/create_file:1.0", "create_file", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), 'OP_NORMAL', [#parameterdescription{name="name", type={tk_sequence,{tk_string,0},0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/create_directory:1.0", "create_directory", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                               "Directory"}), 'OP_NORMAL', [#parameterdescription{name="name", type={tk_sequence,{tk_string,0},0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/get_file:1.0", "get_file", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_struct,
                                               "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                               "FileWrapper",
                                               [{"the_file",
                                                 {tk_objref,
                                                  "IDL:omg.org/CosFileTransfer/File:1.0",
                                                  "File"}},
                                                {"file_type",
                                                 {tk_enum,
                                                  "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                                  "FileType",
                                                  ["nfile","ndirectory"]}}]}), 'OP_NORMAL', [#parameterdescription{name="complete_file_name", type={tk_sequence,
                                                       {tk_string,0},
                                                       0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/delete:1.0", "delete", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="file", type={tk_objref,
                                         "IDL:omg.org/CosFileTransfer/File:1.0",
                                         "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/transfer:1.0", "transfer", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="dest", type={tk_objref,
                                         "IDL:omg.org/CosFileTransfer/File:1.0",
                                         "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
, #parameterdescription{name="src", type={tk_objref,
                                        "IDL:omg.org/CosFileTransfer/File:1.0",
                                        "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/TransferException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/append:1.0", "append", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="dest", type={tk_objref,
                                         "IDL:omg.org/CosFileTransfer/File:1.0",
                                         "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
, #parameterdescription{name="src", type={tk_objref,
                                        "IDL:omg.org/CosFileTransfer/File:1.0",
                                        "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/TransferException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/CommandNotImplementedException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/insert:1.0", "insert", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="offset", type=tk_long, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), mode='PARAM_IN'}
, #parameterdescription{name="dest", type={tk_objref,
                                         "IDL:omg.org/CosFileTransfer/File:1.0",
                                         "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
, #parameterdescription{name="src", type={tk_objref,
                                        "IDL:omg.org/CosFileTransfer/File:1.0",
                                        "File"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/File:1.0",
                                               "File"}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/TransferException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/CommandNotImplementedException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/logout:1.0", "logout", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/oe_orber_create_directory_current:1.0", "oe_orber_create_directory_current", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                               "Directory"}), 'OP_NORMAL', [], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/oe_orber_get_content:1.0", "oe_orber_get_content", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,
                                               {tk_struct,
                                                "IDL:omg.org/CosFileTransfer/FileWrapper:1.0",
                                                "FileWrapper",
                                                [{"the_file",
                                                  {tk_objref,
                                                   "IDL:omg.org/CosFileTransfer/File:1.0",
                                                   "File"}},
                                                 {"file_type",
                                                  {tk_enum,
                                                   "IDL:omg.org/CosFileTransfer/FileType:1.0",
                                                   "FileType",
                                                   ["nfile","ndirectory"]}}]},
                                               0}), 'OP_NORMAL', [#parameterdescription{name="parent", type={tk_objref,
                                           "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                           "Directory"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                               "Directory"}), mode='PARAM_IN'}
, #parameterdescription{name="complete_file_name", type={tk_sequence,
                                                       {tk_string,0},
                                                       0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0}), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_5, "IDL:omg.org/CosFileTransfer/FileTransferSession/oe_orber_count_children:1.0", "oe_orber_count_children", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_long), 'OP_NORMAL', [#parameterdescription{name="complete_file_name", type={tk_sequence,
                                                       {tk_string,0},
                                                       0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,{tk_string,0},0}), mode='PARAM_IN'}
], [], []),

    _OE_6 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:omg.org/CosFileTransfer/VirtualFileSystem:1.0", "VirtualFileSystem", "1.0", []),

    orber_ifr:'InterfaceDef_create_enum'(_OE_6, "IDL:omg.org/CosFileTransfer/VirtualFileSystem/NativeFileSystemType:1.0", "NativeFileSystemType", "1.0", ["FTAM","FTP","NATIVE"]),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_6, "IDL:omg.org/CosFileTransfer/VirtualFileSystem/file_system_type:1.0", "file_system_type", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_enum,
                                               "IDL:omg.org/CosFileTransfer/VirtualFileSystem/NativeFileSystemType:1.0",
                                               "NativeFileSystemType",
                                               ["FTAM","FTP","NATIVE"]}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_alias'(_OE_6, "IDL:omg.org/CosFileTransfer/VirtualFileSystem/ContentList:1.0", "ContentList", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,tk_long,0})),

    orber_ifr:'InterfaceDef_create_attribute'(_OE_6, "IDL:omg.org/CosFileTransfer/VirtualFileSystem/supported_content_types:1.0", "supported_content_types", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_sequence,tk_long,0}), 'ATTR_READONLY'),

    orber_ifr:'InterfaceDef_create_operation'(_OE_6, "IDL:omg.org/CosFileTransfer/VirtualFileSystem/login:1.0", "login", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/FileTransferSession:1.0",
                                               "FileTransferSession"}), 'OP_NORMAL', [#parameterdescription{name="root", type={tk_objref,
                                         "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                         "Directory"}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_objref,
                                               "IDL:omg.org/CosFileTransfer/Directory:1.0",
                                               "Directory"}), mode='PARAM_OUT'}
, #parameterdescription{name="account", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0}), mode='PARAM_IN'}
, #parameterdescription{name="password", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0}), mode='PARAM_IN'}
, #parameterdescription{name="username", type={tk_string,0}, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, {tk_string,0}), mode='PARAM_IN'}
], [orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosFileTransfer/SessionException:1.0")], []),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosFileTransfer/Istring:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:omg.org/CosFileTransfer/Istring:1.0"})
 end.


%% IFR registration checks for included idl files.
include_reg_test(OE_IFR) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosPropertyService:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/CosPropertyService:1.0"});
    _  ->
      true
  end,
  true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/VirtualFileSystem:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileTransferSession:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileIterator:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/Directory:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileList:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileWrapper:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileType:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/File:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileNameList:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileName:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/SupportedProtocolAddresses:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/ProtocolSupport:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/ProtocolAddressList:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/AccessLevel:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/IllegalOperationException:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/RequestFailureException:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FileNotFoundException:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/TransferException:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/SessionException:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/CommandNotImplementedException:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/INTAP_1:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/NBS_9:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FTAM_5:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FTAM_4:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FTAM_3:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FTAM_2:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/FTAM_1:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/ContentType:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/ProtocolAddress:1.0"),
    oe_destroy(OE_IFR, "IDL:omg.org/CosFileTransfer/Istring:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:omg.org/CosFileTransfer:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    {"/net/isildur/ldisk/daily_build/r15b03_prebuild_opu_o.2012-12-06_18/otp_src_R15B03/lib/cosFileTransfer/src/CosFileTransfer.idl",
     ["/net/isildur/ldisk/daily_build/r15b03_prebuild_opu_o.2012-12-06_18/otp_src_R15B03/lib/cosProperty/src/CosProperty.idl"]}.

