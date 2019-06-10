#!/bin/bash

format () {
    while read raw;
    do
        local input=($raw)
        local date=$(echo ${input[-1]} | sed 's/-/ /g' | awk '{dt=mktime($0 " 00 00 00")-systime(); print int(dt/86400);}')
        if [ $date -gt -5 ]; then
            if [ $date -ge 2 ]; then
                echo "${input[@]::${#input[@]}-1}" "\${color #ddddff}" $date Days "\$color"
            else
                echo "${input[@]::${#input[@]}-1}" "\${color #cc0000}" $date Days "\$color"
            fi 
                
        else
            echo "${input[@]::${#input[@]}}"
        fi       
    done
}

echo $(curl -s -H "Accept: application/json" -H "Content-Type: application/json" https://storage.feveile-hauge.dk/<api-key>/todos) | jq -j '.[]|.data.body," ", .data.date,"\n"' | format | sed 's/^/ \${color #ddddff}x  \$color /g' 
