package main

import (
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"log"
)

//ErrMsg ... Error that will throw when an error opcurr in the http request
type ErrMsg struct {
	Err  string `json:"error"`
	Code int    `json:"statusCode"`
}

var (
	//PORT ... Get the port to deploy the server
	PORT = os.Getenv("PORT")
	//ADDR ... Get the address to deploy the server
	ADDR = os.Getenv("ADDR")
)

func main() {
	http.HandleFunc("/hello", func(w http.ResponseWriter, r *http.Request) {
		if msg, err := json.Marshal(struct {Message string `json:"message"`} {Message: "Hello world from docker"}); err != nil {
			w.Header().Set(http.CanonicalHeaderKey("content-type"), "text/plain")
			w.WriteHeader(http.StatusInternalServerError)
			w.Write([]byte("There are big problems"))
		} else {
			w.Header().Set(http.CanonicalHeaderKey("content-type"), "application/json")
			w.WriteHeader(http.StatusOK)
			w.Write([]byte(msg))
		}
	})
	log.Printf("Starting the server at http://%s:%s\n", ADDR, PORT)
	log.Println(http.ListenAndServe(fmt.Sprintf("%s:%s", ADDR, PORT), nil))
}
