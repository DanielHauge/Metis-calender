
echo "\${color #00cc00}" $(curl -is https://storage.feveile-hauge.dk/<apikey>/todos | head -1 | tr ' ' '\n' | tail -2 | xargs -n2) "\$color"