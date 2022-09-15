// goast.sync: .goast/testdata/args/main.json
package main

import "context"

func HasContext(ctx context.Context, a, b int) int {
	return a + b
}

func NoContext(a, b int) int {
	return a + b
}

func NoArgs() int {
	return 0
}
