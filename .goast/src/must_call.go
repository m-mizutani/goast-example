// goast.sync: .goast/testdata/must_call/main.json
package main

import "github.com/m-mizutani/goast-example/pkg/utils"

func CalledLogFunc() {
	utils.Log("hello")
}

func NotCalledLogFunc() {
}
