/*
 * %CopyrightBegin%
 *
 * Copyright Ericsson AB 2011-2012. All Rights Reserved.
 *
 * The contents of this file are subject to the Erlang Public License,
 * Version 1.1, (the "License"); you may not use this file except in
 * compliance with the License. You should have received a copy of the
 * Erlang Public License along with this software. If not, it can be
 * retrieved online at http://www.erlang.org/.
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
 * the License for the specific language governing rights and limitations
 * under the License.
 *
 * %CopyrightEnd%
 */

/*
 * Description: Thread progress information. Used by lock free algorithms
 *              to determine when all involved threads are guaranteed to
 *              have passed a specific point of execution.
 *
 *              Usage instructions can be found in ert_thr_progress.c
 *
 * Author: 	Rickard Green
 */

#if !defined(ERL_THR_PROGRESS_H__TSD_TYPE__)
#define ERL_THR_PROGRESS_H__TSD_TYPE__

#include "sys.h"

#ifndef ERTS_SMP

#define erts_smp_thr_progress_block() ((void) 0)
#define erts_smp_thr_progress_unblock() ((void) 0)
#define erts_smp_thr_progress_is_blocking() 1

#else /* ERTS_SMP */

#define erts_smp_thr_progress_block erts_thr_progress_block
#define erts_smp_thr_progress_unblock erts_thr_progress_unblock
#define erts_smp_thr_progress_is_blocking erts_thr_progress_is_blocking

void erts_thr_progress_block(void);
void erts_thr_progress_unblock(void);
int erts_thr_progress_is_blocking(void);

typedef Uint64 ErtsThrPrgrVal;

#define ERTS_THR_PRGR_WAKEUP_DATA_SIZE 4 /* Need to be an even power of 2. */

typedef struct {
    int id;
    int is_managed;
    int is_blocking;
    int is_temporary;

    /* --- Part below only for registered threads --- */

    ErtsThrPrgrVal wakeup_request[ERTS_THR_PRGR_WAKEUP_DATA_SIZE];

    /* --- Part below only for managed threads --- */

    int leader; /* Needs to be first in the managed threads part */
    int active;
    struct {
	ErtsThrPrgrVal local;
	ErtsThrPrgrVal next;
	ErtsThrPrgrVal current;
    } previous;
} ErtsThrPrgrData;

void erts_thr_progress_fatal_error_block(SWord timeout,
					 ErtsThrPrgrData *tmp_tpd_bufp);

#endif /* ERTS_SMP */

#endif

#if !defined(ERL_THR_PROGRESS_H__) && !defined(ERL_THR_PROGRESS_TSD_TYPE_ONLY)
#define ERL_THR_PROGRESS_H__

#include "erl_threads.h"
#include "erl_process.h"

#ifdef ERTS_SMP

#define ERTS_THR_PRGR_VAL_WAITING (~((ErtsThrPrgrVal) 0))
#define ERTS_THR_PRGR_INVALID (~((ErtsThrPrgrVal) 0))

extern erts_tsd_key_t erts_thr_prgr_data_key__;

#ifdef ARCH_64
#  define ERTS_THR_PRGR_ATOMIC erts_atomic_t
#else /* ARCH_32 */
#  define ERTS_THR_PRGR_ATOMIC erts_dw_atomic_t
#endif

typedef struct {
    void *arg;
    void (*wakeup)(void *);
    void (*prepare_wait)(void *);
    void (*wait)(void *);
    void (*finalize_wait)(void *);
} ErtsThrPrgrCallbacks;

typedef struct {
    ERTS_THR_PRGR_ATOMIC current;
} ErtsThrPrgr;

extern ErtsThrPrgr erts_thr_prgr__;

void erts_thr_progress_pre_init(void);
void erts_thr_progress_init(int no_schedulers, int managed, int unmanaged);
void erts_thr_progress_register_managed_thread(ErtsSchedulerData *esdp,
					       ErtsThrPrgrCallbacks *,
					       int);
void erts_thr_progress_register_unmanaged_thread(ErtsThrPrgrCallbacks *);
void erts_thr_progress_active(ErtsSchedulerData *esdp, int on);
void erts_thr_progress_wakeup(ErtsSchedulerData *esdp,
			      ErtsThrPrgrVal value);
int erts_thr_progress_update(ErtsSchedulerData *esdp);
int erts_thr_progress_leader_update(ErtsSchedulerData *esdp);
void erts_thr_progress_prepare_wait(ErtsSchedulerData *esdp);
void erts_thr_progress_finalize_wait(ErtsSchedulerData *esdp);

void erts_thr_progress_dbg_print_state(void);

#ifdef ARCH_32
#define ERTS_THR_PRGR_ATOMIC erts_dw_atomic_t
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_prgr_dw_aint_to_val__(erts_dw_aint_t *dw_aint);
#endif
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_prgr_read_nob__(ERTS_THR_PRGR_ATOMIC *atmc);
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_prgr_read_acqb__(ERTS_THR_PRGR_ATOMIC *atmc);
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_prgr_read_mb__(ERTS_THR_PRGR_ATOMIC *atmc);

ERTS_GLB_INLINE int erts_thr_progress_is_managed_thread(void);
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_progress_current_to_later__(ErtsThrPrgrVal val);
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_progress_later(ErtsSchedulerData *);
ERTS_GLB_INLINE ErtsThrPrgrVal erts_thr_progress_current(void);
ERTS_GLB_INLINE int erts_thr_progress_has_passed__(ErtsThrPrgrVal val1, ErtsThrPrgrVal val2);
ERTS_GLB_INLINE int erts_thr_progress_has_reached_this(ErtsThrPrgrVal this, ErtsThrPrgrVal val);
ERTS_GLB_INLINE int erts_thr_progress_equal(ErtsThrPrgrVal val1,
					    ErtsThrPrgrVal val2);
ERTS_GLB_INLINE int erts_thr_progress_cmp(ErtsThrPrgrVal val1, ErtsThrPrgrVal val2);
ERTS_GLB_INLINE int erts_thr_progress_has_reached(ErtsThrPrgrVal val);

#if ERTS_GLB_INLINE_INCL_FUNC_DEF

#ifdef ARCH_64

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_read_nob__(ERTS_THR_PRGR_ATOMIC *atmc)
{
    return (ErtsThrPrgrVal) erts_atomic_read_nob(atmc);
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_read_acqb__(ERTS_THR_PRGR_ATOMIC *atmc)
{
    return (ErtsThrPrgrVal) erts_atomic_read_acqb(atmc);
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_read_mb__(ERTS_THR_PRGR_ATOMIC *atmc)
{
    return (ErtsThrPrgrVal) erts_atomic_read_mb(atmc);
}

#else /* ARCH_32 */

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_dw_aint_to_val__(erts_dw_aint_t *dw_aint)
{
#ifdef ETHR_SU_DW_NAINT_T__
    return (ErtsThrPrgrVal) dw_aint->dw_sint;
#else
    ErtsThrPrgrVal res;
    res = (ErtsThrPrgrVal) ((Uint32) dw_aint->sint[ERTS_DW_AINT_HIGH_WORD]);
    res <<= 32;
    res |= (ErtsThrPrgrVal) ((Uint32) dw_aint->sint[ERTS_DW_AINT_LOW_WORD]);
    return res;
#endif
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_read_nob__(ERTS_THR_PRGR_ATOMIC *atmc)
{
    erts_dw_aint_t dw_aint;
    erts_dw_atomic_read_nob(atmc, &dw_aint);
    return erts_thr_prgr_dw_aint_to_val__(&dw_aint);
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_read_acqb__(ERTS_THR_PRGR_ATOMIC *atmc)
{
    erts_dw_aint_t dw_aint;
    erts_dw_atomic_read_acqb(atmc, &dw_aint);
    return erts_thr_prgr_dw_aint_to_val__(&dw_aint);
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_prgr_read_mb__(ERTS_THR_PRGR_ATOMIC *atmc)
{
    erts_dw_aint_t dw_aint;
    erts_dw_atomic_read_mb(atmc, &dw_aint);
    return erts_thr_prgr_dw_aint_to_val__(&dw_aint);
}

#endif

ERTS_GLB_INLINE int
erts_thr_progress_is_managed_thread(void)
{
    ErtsThrPrgrData *tpd = erts_tsd_get(erts_thr_prgr_data_key__);
    return tpd && tpd->is_managed;
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_progress_current_to_later__(ErtsThrPrgrVal val)
{
    if (val == (ERTS_THR_PRGR_VAL_WAITING-((ErtsThrPrgrVal)2)))
	return ((ErtsThrPrgrVal) 0);
    else if (val == (ERTS_THR_PRGR_VAL_WAITING-((ErtsThrPrgrVal)1)))
	return ((ErtsThrPrgrVal) 1);
    else
	return val + ((ErtsThrPrgrVal) 2);
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_progress_later(ErtsSchedulerData *esdp)
{
    ErtsThrPrgrData *tpd;
    ErtsThrPrgrVal val;
    if (esdp) {
	tpd = &esdp->thr_progress_data;
    managed_thread:
	val = tpd->previous.local;
	ERTS_THR_MEMORY_BARRIER;
    }
    else {
	tpd = erts_tsd_get(erts_thr_prgr_data_key__);
	if (tpd && tpd->is_managed)
	    goto managed_thread;
	val = erts_thr_prgr_read_mb__(&erts_thr_prgr__.current);
    }
    ASSERT(val != ERTS_THR_PRGR_VAL_WAITING);
    return erts_thr_progress_current_to_later__(val);
}

ERTS_GLB_INLINE ErtsThrPrgrVal
erts_thr_progress_current(void)
{
    if (erts_thr_progress_is_managed_thread())
	return erts_thr_prgr_read_nob__(&erts_thr_prgr__.current);
    else
	return erts_thr_prgr_read_acqb__(&erts_thr_prgr__.current);
}

ERTS_GLB_INLINE int
erts_thr_progress_has_passed__(ErtsThrPrgrVal val1, ErtsThrPrgrVal val0)
{
    if ((((((ErtsThrPrgrVal) 1) << 63) & val1)
	 ^ ((((ErtsThrPrgrVal) 1) << 63) & val0)) != 0) {
	/* May have wrapped... */
	if (val1 < (((ErtsThrPrgrVal) 1) << 62)
	    && val0 > (((ErtsThrPrgrVal) 3) << 62)) {
	    /*
	     * 'val1' has wrapped but 'val0' has not yet wrapped. While in
	     * these ranges 'current' is considered later than 'val0'.
	     */
	    return 1;
	}
    }
    return val1 > val0;
}

ERTS_GLB_INLINE int
erts_thr_progress_has_reached_this(ErtsThrPrgrVal this, ErtsThrPrgrVal val)
{
    if (this == val)
	return 1;
    return erts_thr_progress_has_passed__(this, val);
}

ERTS_GLB_INLINE int
erts_thr_progress_equal(ErtsThrPrgrVal val1, ErtsThrPrgrVal val2)
{
    return val1 == val2 && val1 != ERTS_THR_PRGR_INVALID;
}

ERTS_GLB_INLINE int
erts_thr_progress_cmp(ErtsThrPrgrVal val1, ErtsThrPrgrVal val2)
{
    if (val1 == val2)
	return 0;
    if (erts_thr_progress_has_passed__(val1, val2))
	return 1;
    else
	return -1;
}	

ERTS_GLB_INLINE int
erts_thr_progress_has_reached(ErtsThrPrgrVal val)
{
    ErtsThrPrgrVal current = erts_thr_progress_current();
    return erts_thr_progress_has_reached_this(current, val);
}

#endif

#endif /* ERTS_SMP */

#endif
