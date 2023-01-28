package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Printf("hello world")
	})

	log.Fatal(http.ListenAndServe(":3333", nil))
}
