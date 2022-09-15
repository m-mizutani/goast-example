package goast

import future.keywords.in

test_assign {
	not _test_assign
}

_test_assign {
	testCases := [
		{
			"data": data.testdata.assign.def,
			"pos": 115,
		},
		{
			"data": data.testdata.assign.value,
			"pos": 187,
		},
		{
			"data": data.testdata.assign.ptr,
			"pos": 263,
		},
	]

	tc := testCases[_]
	out := fail with input as tc.data

	f := out[_].pos
	f.msg == "User must be created with constructor"
	f.pos != tc.pos
	print("assign test failed expect", tc.pos, "but", f.pos)
}
