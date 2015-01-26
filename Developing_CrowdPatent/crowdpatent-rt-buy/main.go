package main

import (
	"database/sql"
	"log"
	"net/http"
	"os"

	_ "github.com/lib/pq"

	"github.com/codegangsta/negroni"
	"github.com/gorilla/mux"
	"github.com/gorilla/websocket"
)

var upgrader = websocket.Upgrader{
	CheckOrigin:     func(r *http.Request) bool { return true },
	ReadBufferSize:  1024,
	WriteBufferSize: 1024,
}
var db *sql.DB
var activeUsers chan int

type JSONMsg struct {
	Status string
	Id     int
}

type User struct {
	ID    int
	Email string
}

func checker(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	var title string
	err_pg := db.QueryRow("SELECT title FROM campaigns WHERE id=" + vars["patentId"]).Scan(&title)
	switch {
	case err_pg == sql.ErrNoRows:
		log.Printf("No campaign with that ID.")
	case err_pg != nil:
		log.Fatal(err_pg)
	default:
		w.Write([]byte("--> Campaign title is: " + title))
	}
}

func addToChannel() {
	log.Println("write into channel")
	activeUsers <- 1
}

func handler(w http.ResponseWriter, r *http.Request) {

	conn, err := upgrader.Upgrade(w, r, nil)
	if err != nil {
		log.Println(err)
		return
	}

	go addToChannel()

	for id := range activeUsers {
		log.Printf("Current currelty active %s", len(activeUsers))
		if err = conn.WriteJSON(JSONMsg{"user change", id}); err != nil {
			log.Println(err)
			return
		}
	}
}

func main() {
	var err error
	db, err = sql.Open("postgres",
		"postgres://postgres:@"+
			os.Getenv("DB_PORT_5432_TCP_ADDR")+":"+os.Getenv("DB_PORT_5432_TCP_PORT")+"/crowdpatent_development?sslmode=disable")
	if err != nil {
		panic(err)
	}

	router := mux.NewRouter()
	router.HandleFunc("/{patentId:[0-9]+}", handler)
	router.HandleFunc("/cpid/{patentId:[0-9]+}", checker)

	activeUsers = make(chan int)
	n := negroni.Classic()
	n.UseHandler(router)
	n.Run(":3001")
}
