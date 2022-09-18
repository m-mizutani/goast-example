package goast

test_use_context_has_context {
	out := fail with input as data.testdata.args.has_context
	count(out) == 0
}

test_use_context_no_context {
	out := fail with input as data.testdata.args.no_context
    out[_].msg == "first argument must be context.Context"
}

test_use_context_no_args {
	out := fail with input as data.testdata.args.no_args
    out[_].msg == "first argument must be context.Context"
}
