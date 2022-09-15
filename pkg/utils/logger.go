package utils

import (
	"fmt"
	"strings"
)

func Log(args ...any) {
	var values []string
	for _, arg := range args {
		values = append(values, fmt.Sprintf("%v", arg))
	}
	fmt.Println(strings.Join(values, " "))
}
