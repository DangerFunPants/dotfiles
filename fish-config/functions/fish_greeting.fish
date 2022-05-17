function fish_greeting
    set r (random)
    set cowsay_size (cowsay -l | tail -n+2 | wc -l)
    set selection (math $r%$cowsay_size)
    set counter 0
    for ctype in (cowsay -l | tail -n+2 | string split " ")
        if test $counter -eq $selection
            fortune | cowsay -f $ctype
        end
        set counter (math $counter+1)
    end
end
