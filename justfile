set shell := ["fish", "-c"]

compile:
    compile go/main.go

fix:
    -lint --fix go/unlinted.go

format:
    format fish/unformatted.fish
    format go/unformatted.go
    format shell/unformatted.sh

lint:
    -lint fish/unlinted.fish
    -lint go/unlinted.go
    -lint shell/unlinted.sh

repl:
    repl fish
    repl sh

run:
    run fish/main.fish
    run go/main.go
    run shell/main.sh
