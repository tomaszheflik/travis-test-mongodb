package main

import (
        "fmt"
        "os"
        "gopkg.in/mgo.v2"
        "log"
        "gopkg.in/mgo.v2/bson"
)

type Person struct {
        Name string
        Phone string
}

func main() {
        // get mongodb host from env
        mongodb_host := os.Getenv("MONGODB_HOST")
        if mongodb_host == "" {
                mongodb_host = "localhost"
        }
        fmt.Printf("Using mongodb host: %s\n", mongodb_host)

        session, err := mgo.Dial(mongodb_host)
        if err != nil {
                panic(err)
        }
        defer session.Close()

        // Optional. Switch the session to a monotonic behavior.
        session.SetMode(mgo.Monotonic, true)

        c := session.DB("test").C("people")
        err = c.Insert(&Person{"Ale", "+55 53 8116 9639"},
	               &Person{"Cla", "+55 53 8402 8510"})
        if err != nil {
                log.Fatal(err)
        }

        result := Person{}
        err = c.Find(bson.M{"name": "Ale"}).One(&result)
        if err != nil {
                log.Fatal(err)
        }

        fmt.Println("Phone:", result.Phone)
}
