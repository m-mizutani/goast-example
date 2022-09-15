package goast

import future.keywords.in

test_must_call {
	out := fail with input as data.testdata.must_call

	# CalledLogFunc should not be included
	not {
		"msg": "utils.Log must be called at least once",
		"pos": 127,
	} in out

	# NotCalledLogFunc should be included
	{
		"msg": "utils.Log must be called at least once",
		"pos": 173,
	} in out
}
