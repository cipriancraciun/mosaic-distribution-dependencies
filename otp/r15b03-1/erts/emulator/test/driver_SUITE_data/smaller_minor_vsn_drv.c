/* ``The contents of this file are subject to the Erlang Public License,
 * Version 1.1, (the "License"); you may not use this file except in
 * compliance with the License. You should have received a copy of the
 * Erlang Public License along with this software. If not, it can be
 * retrieved via the world wide web at http://www.erlang.org/.
 * 
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
 * the License for the specific language governing rights and limitations
 * under the License.
 * 
 * The Initial Developer of the Original Code is Ericsson Utvecklings AB.
 * Portions created by Ericsson are Copyright 1999, Ericsson Utvecklings
 * AB. All Rights Reserved.''
 * 
 *     $Id$
 */

/*
 * Author: Rickard Green
 *
 * Description: Implementation of a driver with a smaller minor
 *              driver version than the current system.
 */

#define VSN_MISMATCH_DRV_NAME_STR		"smaller_minor_vsn_drv"
#define VSN_MISMATCH_DRV_NAME			smaller_minor_vsn_drv
#define VSN_MISMATCH_DRV_MAJOR_VSN_DIFF		0
#define VSN_MISMATCH_DRV_MINOR_VSN_DIFF		(-1)
 
#include "vsn_mismatch_drv_impl.c"
