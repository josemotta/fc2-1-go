# fc2-1-go
Desafio Go

### Comando

    docker run josemottalopes/codeeducation:latest

### Build

Add -ldflags '-s -w' to go build to strip DWARF, symbol table and debug info. Expect ~25% binary size decrease.

More details: https://golang.org/cmd/link/
