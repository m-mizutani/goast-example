package goast

import future.keywords.in

test_use_context {
	out := fail with input as data.testdata.args
	out[_].pos != 84 # HasContext not included
	out[_].pos == 154 # NoContext should be included
	out[_].pos == 202 # NoArgs should be included
}
