export TODOAPI="https://storage.feveile-hauge.dk/todos"

echo "\${color #00cc00}" $(curl --cookie /home/daniel/Crendetials/metis-authentication -is $TODOAPI | head -1 | tr ' ' '\n' | tail -2 | xargs -n2) "\$color"