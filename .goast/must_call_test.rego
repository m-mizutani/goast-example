package goast

import future.keywords.in

test_must_call_called {
	out := fail with input as data.testdata.must_call.called
    out[_].msg != "utils.Log must be called at least once"
}

test_must_call_not_called {
	out := fail with input as data.testdata.must_call.not_called
    count(out) > 0
    out[_].msg == "utils.Log must be called at least once"
}
