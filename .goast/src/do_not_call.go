package main

import "fmt"

func CallPrintln() {
	fmt.Println("hello") // goast.sync: .goast/testdata/do_not_call/main.json
}
