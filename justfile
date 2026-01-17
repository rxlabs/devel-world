set shell := ["fish", "-c"]

compile:
    compile c/main.c
    compile go/main.go
    compile javascript/index.js
    compile javascript/react/index.jsx
    compile typescript/index.ts
    compile typescript/react/index.tsx

fix:
    -fix c/unlinted.c
    -fix go/unlinted.go
    -fix javascript/unlinted.js
    -fix javascript/react/unlinted.jsx
    -fix python/unlinted.py
    -fix typescript/unlinted.ts
    -fix typescript/react/unlinted.tsx

format:
    format c/unformatted.c
    format fish/unformatted.fish
    format go/unformatted.go
    format javascript/unformatted.js
    format javascript/react/unformatted.jsx
    format python/unformatted.py
    format shell/unformatted.sh
    format shell/unformatted.zsh
    format typescript/unformatted.ts
    format typescript/react/unformatted.tsx

lint:
    -lint c/unlinted.c
    -lint fish/unlinted.fish
    -lint go/unlinted.go
    -lint javascript/unlinted.js
    -lint javascript/react/unlinted.jsx
    -lint python/unlinted.py
    -lint shell/unlinted.sh
    -lint shell/unlinted.zsh
    -lint typescript/unlinted.ts
    -lint typescript/react/unlinted.tsx

repl:
    repl fish/lib.fish
    repl javascript/lib.js
    repl python/lib.py
    repl typescript/lib.ts

run:
    run fish/main.fish
    run go/main.go
    run javascript/main.js
    run python/main.py
    run shell/main.sh
    run shell/main.zsh
    run typescript/main.ts

check:
    -check c/unchecked.c
    -check go/unchecked.go
    -check python/unchecked.py
    -check typescript/unchecked.ts
    -check typescript/react/unchecked.tsx

serve:
    caddy file-server --listen :8080

reset:
    rm -f \
        c/main \
        go/main \
        javascript/main.dist.js \
        javascript/index.dist.js \
        javascript/index.html \
        javascript/react/index.dist.js \
        javascript/react/index.html \
        typescript/main.dist.js \
        typescript/index.dist.js \
        typescript/index.html \
        typescript/react/index.dist.js \
        typescript/react/index.html \

    git checkout \
        c/unformatted.c \
        c/unlinted.c \
        fish/unformatted.fish \
        fish/unlinted.fish \
        go/unformatted.go \
        go/unlinted.go \
        javascript/unformatted.js \
        javascript/unlinted.js \
        javascript/react/unformatted.jsx \
        javascript/react/unlinted.jsx \
        python/unformatted.py \
        python/unlinted.py \
        shell/unformatted.sh \
        shell/unformatted.zsh \
        shell/unlinted.sh \
        shell/unlinted.zsh \
        typescript/unformatted.ts \
        typescript/unlinted.ts \
        typescript/react/unformatted.tsx \
        typescript/react/unlinted.tsx

recheck:
    check c/main.c
    check go/main.go
    check python/main.py
    check python/lib.py
    check typescript/main.ts
    check typescript/lib.ts
    check typescript/react/index.tsx

reformat:
    format c/main.c
    format c/unlinted.c
    format c/unchecked.c
    format fish/main.fish
    format fish/lib.fish
    format fish/unlinted.fish
    format go/main.go
    format go/unlinted.go
    format javascript/main.js
    format javascript/index.js
    format javascript/lib.js
    format javascript/unlinted.js
    format javascript/react/index.jsx
    format javascript/react/unlinted.jsx
    format python/main.py
    format python/lib.py
    format python/unlinted.py
    format python/unchecked.py
    format shell/main.sh
    format shell/main.zsh
    format shell/unlinted.sh
    format shell/unlinted.zsh
    format typescript/main.ts
    format typescript/index.ts
    format typescript/lib.ts
    format typescript/unlinted.ts
    format typescript/unchecked.ts
    format typescript/react/index.tsx
    format typescript/react/unlinted.tsx
    format typescript/react/unchecked.tsx
