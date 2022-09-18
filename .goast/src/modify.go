package main

import (
	"github.com/m-mizutani/goast-example/pkg/model"
)

func Modify() {
	u := model.NewUser()
	u.Name = "test" // goast.sync: .goast/testdata/modify/data.json
}
