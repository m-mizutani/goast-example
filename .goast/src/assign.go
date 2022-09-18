package main

import (
	"fmt"

	"github.com/m-mizutani/goast-example/pkg/model"
)

func InvalidAssign() {
	var u1 model.User   // goast.sync: .goast/testdata/assign/def/data.json
	u2 := model.User{}  // goast.sync: .goast/testdata/assign/value/data.json
	u3 := &model.User{} // goast.sync: .goast/testdata/assign/ptr/data.json

	fmt.Println(u1, u2, u3)
}
