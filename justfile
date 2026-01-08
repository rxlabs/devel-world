set shell := ["fish", "-c"]

run:
    run fish/main.fish
    run go/main.go
    run shell/main.sh

compile:
    compile go/main.go

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
