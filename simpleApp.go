package main

import (
	"fmt"
	"time"

	privaterepo "github.com/MalteHerrmann/private-repo-for-testing"
)

func main() {
	// useless import for testing purposes
	_ = privaterepo.DummyStruct{}

	// run a for loop that prints the current time every 5 seconds
	for {
		fmt.Println(time.Now())
		time.Sleep(5 * time.Second)
	}
}
