package main

import "context"

func HasContext(ctx context.Context, a, b int) int { // goast.sync: .goast/testdata/args/has_context/main.json
	return a + b
}

func NoContext(a, b int) int { // goast.sync: .goast/testdata/args/no_context/main.json
	return a + b
}

func NoArgs() int { // goast.sync: .goast/testdata/args/no_args/main.json
	return 0
}
