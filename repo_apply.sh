#!/bin/bash

# - a script to apply patch made by 'repo diff'
#   Run this script at android root directory.

[[ $# != 1 ]] && echo "Usage: `basename $0` patch_by_repo_diff" && exit 1
PATCH="$1"
ROOT=`pwd`

# NOTE: needs new version of bash
[[ $PATCH != [/~]* ]] && PATCH="$ROOT/$1"

i=0
LINES=(`awk '/project/{print FNR}' $PATCH`)
for PROJ in `awk '/project/{print $2}' $PATCH`
do
    echo "apply patch in $PROJ"

    START=$((${LINES[i]}+1))
    END=$((${LINES[$((i+1))]}-1))
    # if in the last project
    [[ -1 -eq $END ]] && END=`wc -l $PATCH | cut -d' ' -f1`

    cd $PROJ && sed -ne "${START},${END}p" $PATCH | \
                git apply --reject -p1
    # back to root dir
    cd $ROOT

    read -p '<Enter> to apply next project, <C-c> to stop '
    i=$((i+1))
done
