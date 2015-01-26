package main

import (
	"log"
	"math/rand"
	"time"
)

var pq = make(chan int, 100)

func startProcess() {

	if len(pq) >= 10 {
		log.Printf("too many in queue %v", len(pq))
		return
	}

	log.Printf("in queue %v", len(pq))

	rand.Seed(time.Now().Unix())
	in := 1 + rand.Intn(2)

	log.Printf("-> %v", in)
	pq <- in

	time.Sleep(time.Duration(in) * time.Second)
	startProcess()
}
func main() {
	go startProcess()

	for p := range pq {
		log.Printf("-> start PROCESS %v", p)
		time.Sleep(30 * time.Second)
		log.Printf("<- end   PROCESS %v", p)
		if len(pq) < 10 {
			startProcess()
		}
	}
}
