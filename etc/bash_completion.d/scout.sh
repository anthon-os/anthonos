# Copyright (c) 2008 Marek Stopka <mstopka@opensuse.org>
# This file is distributed under the terms of MIT license
# see LICENSE or http://opensource.org/licenses/mit-license.php

# scout completion :-)

_scout() {
    SCOUT_CMDLIST=()
    SCOUT=`which scout`
    local opts cur prev prevprev
    if test ${#SCOUT_CMDLIST[*]} = 0; then
        for foo in $(LC_ALL=C $SCOUT 2>&1 | sed -e "1,/Available modules:/d" | egrep [a-z] | awk -F ' ' '{print $1}'); do
            SCOUT_CMDLIST="$SCOUT_CMDLIST $foo"
        done
        SCOUT_CMDLIST="$SCOUT_CMDLIST"
    fi
    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}
    if [[ ${#COMP_WORDS[@]} -ge 3 ]]; then
        prevprev=${COMP_WORDS[COMP_CWORD-2]}
    fi

    case "$prev" in
        scout)
            opts=$SCOUT_CMDLIST
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        autoconf)
            opts=`$SCOUT autoconf  2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        bin)
            opts=`$SCOUT bin       2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        java)
            opts=`$SCOUT java      2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        perl)
            opts=`$SCOUT perl      2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        pkgconfig)
            opts=`$SCOUT pkgconfig 2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        python)
            opts=`$SCOUT python    2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        ruby)
            opts=`$SCOUT ruby      2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        webpin)
            opts=`$SCOUT webpin    2>&1 | sed -e "1,/Options:/d" | awk -F ', ' '{print $2}' | sed -e 's/ .*//' -e 's/--repo=REPO/--repo/'`
            COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
        ;;
        --repo)
            if ($SCOUT $prevprev --listrepos | egrep "\- none \-" >/dev/null); then
                echo -e "\nNo repositories are available"
            else
                opts=`$SCOUT $prevprev --listrepos | sed 's/Available repositories://' | awk -F ' - ' '{print $1}'`
                COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
            fi
        ;;
    esac
}

complete -F _scout -X -o default scout
