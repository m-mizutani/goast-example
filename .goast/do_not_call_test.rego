package goast

test_use_context {
	out := fail with input as data.testdata.do_not_call
	count(out) == 1
	out[_].pos == 51
}
