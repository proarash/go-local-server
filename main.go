package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
)

func main() {
	port := flag.Int("port", 8080, "port to run http server")

	var dir string
	flag.StringVar(&dir, "dir", ".", "directory path to serv")

	flag.Parse()

	addr := fmt.Sprintf(":%v", *port)

	log.Printf("server is running on %v", addr)

	err := http.ListenAndServe(addr, http.FileServer(http.Dir(dir)))

	if err != nil {
		log.Fatalf("%s", err.Error())
	}
}
