# 
# %CopyrightBegin%
# 
# Copyright Ericsson AB 2002-2012. All Rights Reserved.
# 
# The contents of this file are subject to the Erlang Public License,
# Version 1.1, (the "License"); you may not use this file except in
# compliance with the License. You should have received a copy of the
# Erlang Public License along with this software. If not, it can be
# retrieved online at http://www.erlang.org/.
# 
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
# 
# %CopyrightEnd%

include $(ERL_TOP)/make/target.mk

ifeq ($(TYPE),debug)
ERL_COMPILE_FLAGS += -Ddebug -W
endif

EBIN = .
MEGACO_INCLUDEDIR = ../../include

include $(ERL_TOP)/make/$(TARGET)/otp.mk

# ----------------------------------------------------
# Application version
# ----------------------------------------------------
include ../../vsn.mk
VSN=$(MEGACO_VSN)


# ----------------------------------------------------
# Configured variables
# ----------------------------------------------------
PERL = perl


# ----------------------------------------------------
# Release directory specification
# ----------------------------------------------------
RELSYSDIR         = $(RELEASE_PATH)/lib/megaco-$(VSN)
EXAMPLE_RELSYSDIR = $(RELSYSDIR)/examples
MEAS_RELSYSDIR    = $(EXAMPLE_RELSYSDIR)/meas


# ----------------------------------------------------
# Target Specs
# ----------------------------------------------------

include modules.mk

ERL_FILES = $(MODULES:%=%.erl)

SCRIPT_SKELETONS = $(SCRIPT_SKELETON_SRC:%.src=%)

ERL_TARGETS = \
	$(ERL_FILES:%.erl=$(EBIN)/%.$(EMULATOR))

TARGET_FILES = $(SCRIPT_SKELETONS) $(ERL_TARGETS)


# ----------------------------------------------------
# FLAGS
# ----------------------------------------------------

ifeq ($(WARN_UNUSED_WARS),true)
ERL_COMPILE_FLAGS += +warn_unused_vars
endif

ifeq ($(USE_MEGACO_HIPE),true)
ERL_COMPILE_FLAGS += +native
endif

ifeq ($(USE_VERBOSE_STATS),true)
ERL_COMPILE_FLAGS += -DVERBOSE_STATS=true
endif

ifneq ($(MSTONE_TIME),)
ERL_COMPILE_FLAGS += -DMSTONE_TIME=$(MSTONE_TIME)
endif

ERL_COMPILE_FLAGS += \
	-pa $(ERL_TOP)/lib/megaco/ebin \
	-I../include


# ----------------------------------------------------
# Special Build Targets
# ----------------------------------------------------


# ----------------------------------------------------
# Targets
# ----------------------------------------------------
debug:
	@${MAKE} TYPE=debug opt

opt: $(TARGET_FILES) 

script_skeletons: $(SCRIPT_SKELETONS)

info:
	@echo "MODULES   = $(MODULES)"
	@echo "ERL_FILED = $(ERL_FILES)"
	@echo ""
	@echo "SCRIPT_SKELETON_SRC = $(SCRIPT_SKELETON_SRC)"
	@echo "SCRIPT_SKELETONS    = $(SCRIPT_SKELETONS)"
	@echo ""
	@echo "TARGET_FILES = $(TARGET_FILES)"
	@echo ""

clean:
	rm -f $(TARGET_FILES) 
	rm -f errs core *~

docs:

conf: 
	cd ../..; $(MAKE) conf


# ----------------------------------------------------
# Release Target
# ---------------------------------------------------- 
include $(ERL_TOP)/make/otp_release_targets.mk


release_spec: opt
	$(INSTALL_DIR)  "$(EXAMPLE_RELSYSDIR)"
	$(INSTALL_DIR)  "$(MEAS_RELSYSDIR)"
	$(INSTALL_DATA) $(MESSAGE_PACKAGES) "$(MEAS_RELSYSDIR)"
	$(INSTALL_DATA) $(SCRIPT_SKELETONS) "$(MEAS_RELSYSDIR)"
	$(INSTALL_DATA) $(TARGET_FILES) "$(MEAS_RELSYSDIR)"
	$(INSTALL_DATA) $(ERL_FILES) "$(MEAS_RELSYSDIR)"


release_docs_spec:


# ----------------------------------------------------
# Include dependencies
# ----------------------------------------------------

meas.sh.skel: meas.sh.skel.src
	@echo "transforming $< to $@"
	$(PERL) -p -e 's?%VSN%?$(VSN)? ' < $< > $@

mstone1.sh.skel: mstone1.sh.skel.src
	@echo "transforming $< to $@"
	$(PERL) -p -e 's?%VSN%?$(VSN)? ' < $< > $@

megaco_codec_transform.$(EMULATOR): megaco_codec_transform.erl

megaco_codec_meas.$(EMULATOR): megaco_codec_meas.erl

megaco_codec_mstone1.$(EMULATOR): megaco_codec_mstone1.erl

megaco_codec_mstone2.$(EMULATOR): megaco_codec_mstone2.erl

megaco_codec_mstone_lib.$(EMULATOR): megaco_codec_mstone_lib.erl

