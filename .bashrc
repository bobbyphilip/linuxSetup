export PATH=$HOME/bin:$HOME/.local/bin:$PATH
alias ll="ls -lhA"

psgrep() {
        if [ ! -z $1 ] ; then
                echo "Grepping for processes matching $1..."
                ps aux | grep $1 | grep -v grep
        else
                echo "!! Need name to grep for"
        fi
}

up(){
        local d=""
        limit=$1
        for ((i=1 ; i <= limit ; i++))
        do
                d=$d/..
        done
        d=$(echo $d | sed 's/^\///')
        if [ -z "$d" ]; then
                d=..
        fi
        cd $d
        pwd
}

cdh(){
        cd ~/
        pwd
}

