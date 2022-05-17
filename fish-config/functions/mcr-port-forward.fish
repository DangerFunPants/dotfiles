function mcr-port-forward
    ssh -i ~/.ssh/id_rsa_mcrjb -q -C -N -D 8888 alexanderj@10.163.83.4
end
