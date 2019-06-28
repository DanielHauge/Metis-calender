export TODOAPI="https://storage.feveile-hauge.dk/todos"
alias curlauth='curl --cookie /home/daniel/Crendetials/metis-authentication'

echo "\${color #00cc00}" $(curlauth -is $TODOAPI | head -1 | tr ' ' '\n' | tail -2 | xargs -n2) "\$color"