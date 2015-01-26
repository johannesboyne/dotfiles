package main

import (
	"log"
	"math/rand"
)

func sq(ch <-chan int) bool {
	for n := range ch {
		log.Printf("N: %i", n)
	}
	return true
}

func main() {
	log.Println("main:")
	queue := make(chan int)
	queue <- rand.Intn(10)
	queue <- rand.Intn(10)

	bo := sq(queue)
	close(queue)

	log.Println(bo)
}
