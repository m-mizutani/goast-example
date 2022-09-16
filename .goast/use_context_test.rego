package goast

import future.keywords.in

test_use_context_has_context {
	out := fail with input as data.testdata.args.has_context
    count(out) == 0
}

test_use_context_no_context {
	out := fail with input as data.testdata.args.no_context
    count(out) == 1
	out[_].pos == 212 # NoContext should be included
}

test_use_context_no_context {
	out := fail with input as data.testdata.args.no_args
    count(out) == 1
	out[_].pos == 317 # NoArgs should be included
}
