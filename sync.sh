
echo "\${color #00cc00}" $(curl -is https://storage.feveile-hauge.dk/78af89d6-301f-4a63-9453-84a909992622/todos | head -1 | tr ' ' '\n' | tail -2 | xargs -n2) "\$color"