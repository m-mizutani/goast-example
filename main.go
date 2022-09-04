package main

import "fmt"

func main() {
	fmt.Println("hello!")
	Add(2, 4)
}

func Add(a, b int) int {
	return a + b
}
