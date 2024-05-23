package main

import (
	"fmt"
	"time"
)

func main() {
	delay := 50 * time.Millisecond
	i := 0
	n := 1000

	for i < 143 {
		time.Sleep(delay)
		i++

		if n <= 6 {
			fmt.Println("Я гуль!")
			return
		}

		fmt.Printf("%d - %d = %d\n", n, 7, n-7)
		n -= 7
	}
}