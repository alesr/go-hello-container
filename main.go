package main

import (
	"io"
	"net/http"
	"os"
	"strings"
)

func main() {

	args := os.Args[1:]

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		handler(w, r, args)
	})
	panic(http.ListenAndServe(":8080", nil))
}

// one handler to rule them all :)
func handler(w http.ResponseWriter, r *http.Request, args []string) {
	io.WriteString(w, strings.Join(args, " "))
}
