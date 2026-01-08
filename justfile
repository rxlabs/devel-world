set shell := ["fish", "-c"]

compile:
    compile c/main.c
    compile go/main.go
    compile javascript/main.js
    compile javascript/web/index.jsx
    compile typescript/main.ts
    compile typescript/web/index.tsx

fix:
    -lint --fix c/unlinted.c
    -lint --fix go/unlinted.go
    -lint --fix javascript/unlinted.js
    -lint --fix javascript/web/unlinted.jsx
    -lint --fix typescript/unlinted.ts
    -lint --fix typescript/web/unlinted.tsx

format:
    format c/unformatted.c
    format fish/unformatted.fish
    format go/unformatted.go
    format javascript/unformatted.js
    format javascript/web/unformatted.jsx
    format shell/unformatted.sh
    format shell/unformatted.zsh
    format typescript/unformatted.ts
    format typescript/web/unformatted.tsx

lint:
    -lint c/unlinted.c
    -lint fish/unlinted.fish
    -lint go/unlinted.go
    -lint javascript/unlinted.js
    -lint javascript/web/unlinted.jsx
    -lint shell/unlinted.sh
    -lint shell/unlinted.zsh
    -lint typescript/unlinted.ts
    -lint typescript/web/unlinted.tsx

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
    format javascript/web/index.jsx
    format javascript/web/unlinted.jsx
    format shell/main.sh
    format shell/main.zsh
    format shell/unlinted.sh
    format shell/unlinted.zsh
    format typescript/main.ts
    format typescript/lib.ts
    format typescript/unlinted.ts
    format typescript/web/index.tsx
    format typescript/web/unlinted.tsx

repl:
    repl fish
    repl js
    repl ts

run:
    run fish/main.fish
    run go/main.go
    run javascript/main.js
    run shell/main.sh
    run shell/main.zsh
    run typescript/main.ts

serve:
    caddy file-server --listen :8080

reset:
    rm -f \
        c/main \
        go/main \
        javascript/main.dist.js \
        javascript/web/index.dist.js \
        javascript/web/index.html \
        typescript/main.dist.js \
        typescript/web/index.dist.js \
        typescript/web/index.html \
        typescript/web/unformatted.html \
        typescript/web/unlinted.html

    git checkout \
        c/unformatted.c \
        c/unlinted.c \
        fish/unformatted.fish \
        fish/unlinted.fish \
        go/unformatted.go \
        go/unlinted.go \
        javascript/unformatted.js \
        javascript/unlinted.js \
        javascript/web/unformatted.jsx \
        javascript/web/unlinted.jsx \
        shell/unformatted.sh\
        shell/unformatted.zsh \
        shell/unlinted.sh\
        shell/unlinted.zsh \
        typescript/unformatted.ts\
        typescript/unlinted.ts \
        typescript/web/unformatted.tsx\
        typescript/web/unlinted.tsx
