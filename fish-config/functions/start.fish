function start
    if test (count $argv) -gt 0
        set cmd "$argv > /dev/null 2> /dev/null &"
        eval $cmd > /dev/null
        set pid (jobs -lp)
        disown $pid
    else
        echo "Must provide an argument"
    end
end
