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
    -fix css/unlinted.css
    -fix go/unlinted.go
    -fix javascript/unlinted.js
    -fix javascript/react/unlinted.jsx
    -fix python/unlinted.py
    -fix ruby/unlinted.rb
    -fix typescript/unlinted.ts
    -fix typescript/react/unlinted.tsx

# TODO
# fix_stdin:
#     -cat c/unlinted.c | fix -e c
#     -cat css/unlinted.css | fix -e css
#     -cat go/unlinted.go | fix -e go
#     -cat javascript/unlinted.js | fix -e js
#     -cat javascript/react/unlinted.jsx | fix -e jsx
#     -cat python/unlinted.py | fix -e py
#     -cat ruby/unlinted.rb | fix -e rb
#     -cat typescript/unlinted.ts | fix -e ts
#     -cat typescript/react/unlinted.tsx | fix -e tsx

format:
    format c/unformatted.c
    format css/unformatted.css
    format fish/unformatted.fish
    format go/unformatted.go
    format javascript/unformatted.js
    format javascript/react/unformatted.jsx
    format json/unformatted.json
    format python/unformatted.py
    format ruby/unformatted.rb
    format shell/unformatted.sh
    format shell/unformatted.zsh
    format typescript/unformatted.ts
    format typescript/react/unformatted.tsx

format_stdin:
    cat c/unformatted.c | format -e c
    cat css/unformatted.css | format -e css
    cat fish/unformatted.fish | format -e fish
    cat go/unformatted.go | format -e go
    cat javascript/unformatted.js | format -e js
    cat javascript/react/unformatted.jsx | format -e jsx
    cat json/unformatted.json | format -e json
    cat python/unformatted.py | format -e py
    cat ruby/unformatted.rb | format -e rb
    cat shell/unformatted.sh | format -e sh
    cat shell/unformatted.zsh | format -e zsh
    cat typescript/unformatted.ts | format -e ts
    cat typescript/react/unformatted.tsx | format -e tsx

lint:
    -lint c/unlinted.c
    -lint css/unlinted.css
    -lint fish/unlinted.fish
    -lint go/unlinted.go
    -lint javascript/unlinted.js
    -lint javascript/react/unlinted.jsx
    -lint json/unlinted.json
    -lint python/unlinted.py
    -lint ruby/unlinted.rb
    -lint shell/unlinted.sh
    -lint shell/unlinted.zsh
    -lint typescript/unlinted.ts
    -lint typescript/react/unlinted.tsx

lint_stdin:
    -cat c/unlinted.c | lint --extension c
    -cat css/unlinted.css | lint --extension css
    -cat fish/unlinted.fish | lint --extension fish
    -cat go/unlinted.go | lint --extension go
    -cat javascript/unlinted.js | lint --extension js
    -cat javascript/react/unlinted.jsx | lint --extension jsx
    -cat json/unlinted.json | lint --extension json
    -cat python/unlinted.py | lint --extension py
    -cat ruby/unlinted.rb | lint --extension rb
    -cat shell/unlinted.sh | lint --extension sh
    -cat shell/unlinted.zsh | lint --extension zsh
    -cat typescript/unlinted.ts | lint --extension ts
    -cat typescript/react/unlinted.tsx | lint --extension tsx

repl:
    repl fish/lib.fish
    repl javascript/lib.js
    repl python/lib.py
    repl ruby/lib.rb
    repl typescript/lib.ts

run:
    run c/main.c
    run fish/main.fish
    run go/main.go
    run javascript/main.js
    run python/main.py
    run ruby/main.rb
    run shell/main.sh
    run shell/main.zsh
    run typescript/main.ts

run_stdin:
    cat c/main.c | run -e c
    cat fish/main.fish | run -e fish
    cat go/main.go | run -e go
    cat javascript/main.js | run -e js
    cat python/main.py | run -e py
    cat ruby/main.rb | run -e rb
    cat shell/main.sh | run -e sh
    cat shell/main.zsh | run -e zsh
    cat typescript/main.ts | run -e ts

check:
    -check c/unchecked.c
    -check go/unchecked.go
    -check python/unchecked.py
    -check typescript/unchecked.ts
    -check typescript/react/unchecked.tsx

# TODO
# check_stdin:
#     -cat c/unchecked.c | check -e c
#     -cat go/unchecked.go | check -e go
#     -cat python/unchecked.py | check -e py
#     -cat typescript/unchecked.ts | check -e ts
#     -cat typescript/react/unchecked.tsx | check -e tsx

serve:
    serve

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
        css/unformatted.css \
        css/unlinted.css \
        fish/unformatted.fish \
        fish/unlinted.fish \
        go/unformatted.go \
        go/unlinted.go \
        javascript/unformatted.js \
        javascript/unlinted.js \
        javascript/react/unformatted.jsx \
        javascript/react/unlinted.jsx \
        json/unformatted.json \
        python/unformatted.py \
        python/unlinted.py \
        ruby/unformatted.rb \
        ruby/unlinted.rb \
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
    check ruby/main.rb
    check ruby/lib.rb
    check typescript/main.ts
    check typescript/lib.ts
    check typescript/react/index.tsx

reformat:
    format c/main.c
    format c/unlinted.c
    format c/unchecked.c
    format css/unlinted.css
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
    format json/unlinted.json
    format python/main.py
    format python/lib.py
    format python/unlinted.py
    format python/unchecked.py
    format ruby/main.rb
    format ruby/lib.rb
    format ruby/unlinted.rb
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
