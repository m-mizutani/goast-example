package main

import "github.com/m-mizutani/goast-example/pkg/utils"

func CalledLogFunc() { // goast.sync: .goast/testdata/must_call/called/data.json
	utils.Log("hello")
}

func NotCalledLogFunc() { // goast.sync: .goast/testdata/must_call/not_called/data.json
}
