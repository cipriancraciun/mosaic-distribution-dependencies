#! /bin/sh
# 
# %CopyrightBegin%
# 
# Copyright Ericsson AB 2002-2011. All Rights Reserved.
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
# 
if [ X"$CONFIG_SUBTYPE" = X"win64" ]; then
    GCC="x86_64-w64-mingw32-gcc.exe"
else 
    GCC="gcc"
fi
TOOLDIR=$ERL_TOP/erts/etc/win32/cygwin_tools/vc
COFFIX=$TOOLDIR/coffix
WTOOLDIR=`(cygpath -d $TOOLDIR 2>/dev/null || cygpath -w $TOOLDIR)`

# Do primitive 'make'
newer_exe=`find $TOOLDIR -newer $COFFIX.c -name coffix.exe -print`
if [ -z $newer_exe ]; then
    echo recompiling $COFFIX.exe
    cl.exe -Fe${WTOOLDIR}\\coffix.exe ${WTOOLDIR}\\coffix.c
    rm -f $COFFIX.obj coffix.obj $COFFIX.pdb coffix.pdb
fi

# Try to find out the output filename and remove it from command line
CMD=""
OUTFILE=""
INFILE=""
SKIP_COFFIX=false
while test -n "$1" ; do
    x="$1"
    case "$x" in
	-o/*)
	    OUTFILE=`echo $x | sed 's,^-[Io]\(/.*\),\1,g'`;;
	-o)
	    shift
	    OUTFILE=$1;;
	-MM)
	    SKIP_COFFIX=true
	    CMD="$CMD \"$x\"";;
	*.c)
	    INFILE="$INFILE $x";
	    CMD="$CMD \"$x\"";;
	*)
	    CMD="$CMD \"$x\"";;
    esac
    shift
done
if [ -z "$INFILE" ]; then
    echo 'emu_cc.sh: please give an input filename for the compiler' >&2
    exit 1
fi    
if [ -z "$OUTFILE" ]; then
    OUTFILE=`echo $INFILE | sed 's,\.c$,.o,'`
fi

if [ $SKIP_COFFIX = false ]; then
    n=`echo $INFILE | wc -w`;
    if [ $n -gt 1 ]; then
	echo "emu_cc.sh:Error, multiple sources, one object output.";
	exit 1;
    fi
    TEMPFILE=/tmp/tmp_emu_cc$$.o
    if [ "X$EMU_CC_SH_DEBUG_LOG" != "X" ]; then
	echo "gcc -o $TEMPFILE -D__WIN32__ -DWIN32 -DWINDOWS -fomit-frame-pointer $CMD" >> $EMU_CC_SH_DEBUG_LOG 2>&1
    fi
    eval $GCC -o $TEMPFILE -D__WIN32__ -DWIN32 -DWINDOWS -fomit-frame-pointer $CMD
    RES=$?
    if [ $RES = 0 ]; then
	$COFFIX.exe -e `(cygpath -d $TEMPFILE 2>/dev/null || cygpath -w $TEMPFILE)`
	RES=$?
	if [ $RES = 0 ]; then
	    cp $TEMPFILE $OUTFILE
	else
	    echo "emu_cc.sh: fatal: coffix failed!" >&2
	fi
    fi
    rm -f $TEMPFILE
    exit $RES
else
    eval $GCC -D__WIN32__ -DWIN32 -DWINDOWS -fomit-frame-pointer -fno-tree-copyrename $CMD 2>/dev/null
    exit $?
fi
