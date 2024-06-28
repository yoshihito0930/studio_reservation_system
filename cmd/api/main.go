package main

import (
	"log"
	"net/http"

	"github.com/yourusername/studio-reservation-system/internal/server"
)

func main() {
	srv := server.NewServer()
	log.Println("Starting server on :8080")
	err := http.ListenAndServe(":8080", srv)
	if err != nil {
		log.Fatalf("Could not start server: %s\n", err.Error())
	}
}
