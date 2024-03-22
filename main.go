package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Doing a thing...")
	time.Sleep(time.Second * 5)
	fmt.Println("done with thing!")
}
