set shell := ["fish", "-c"]

compile:
    compile c/main.c
    compile go/main.go
    compile javascript/main.js
    compile typescript/main.ts

fix:
    -lint --fix c/unlinted.c
    -lint --fix go/unlinted.go
    -lint --fix javascript/unlinted.js
    -lint --fix typescript/unlinted.ts

format:
    format c/unformatted.c
    format fish/unformatted.fish
    format go/unformatted.go
    format javascript/unformatted.js
    format shell/unformatted.sh
    format shell/unformatted.zsh
    format typescript/unformatted.ts

lint:
    -lint c/unlinted.c
    -lint fish/unlinted.fish
    -lint go/unlinted.go
    -lint javascript/unlinted.js
    -lint shell/unlinted.sh
    -lint shell/unlinted.zsh
    -lint typescript/unlinted.ts

reformat:
    format c/main.c
    format c/unlinted.c
    format fish/main.fish
    format fish/lib.fish
    format fish/unlinted.fish
    format go/main.go
    format go/unlinted.go
    format javascript/main.js
    format javascript/lib.js
    format javascript/unlinted.js
    format shell/main.sh
    format shell/main.zsh
    format shell/unlinted.sh
    format shell/unlinted.zsh
    format typescript/main.ts
    format typescript/lib.ts
    format typescript/unlinted.ts

repl:
    repl fish
    repl js
    repl ts

reset:
    rm -f c/main go/main
    git checkout \
        c/unformatted.c c/unlinted.c \
        fish/unformatted.fish \
        go/unformatted.go go/unlinted.go \
        javascript/unformatted.js javascript/unlinted.js \
        shell/unformatted.sh shell/unformatted.zsh \
        typescript/unformatted.ts typescript/unlinted.ts

run:
    run fish/main.fish
    run go/main.go
    run javascript/main.js
    run shell/main.sh
    run shell/main.zsh
    run typescript/main.ts
