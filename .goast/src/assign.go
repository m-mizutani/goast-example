package main

import (
	"fmt"

	"github.com/m-mizutani/goast-example/pkg/model"
)

func InvalidAssign() {
	var u1 model.User   // goast.sync: .goast/testdata/assign/def/main.json
	u2 := model.User{}  // goast.sync: .goast/testdata/assign/value/main.json
	u3 := &model.User{} // goast.sync: .goast/testdata/assign/ptr/main.json

	fmt.Println(u1, u2, u3)
}
