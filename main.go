package main

import (
	"log"
	"os"

	"github.com/m-mizutani/goast-example/pkg/controller/cmd"
)

func main() {
	if err := cmd.Run(os.Args); err != nil {
		log.Fatal(err.Error())
	}
}
