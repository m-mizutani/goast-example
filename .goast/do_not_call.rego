package goast

fail[res] {
	prohibit_functions = [
		"Fprint",
		"Fprintf",
		"Fprintln",
		"Println",
		"Printf",
		"Fprint",
	]

	input.Kind == "ExprStmt"
	input.Node.X.Fun.X.Name == "fmt"
	input.Node.X.Fun.Sel.Name == prohibit_functions[_]

	res = {
		"msg": sprintf("do not use %s", [input.Node.X.Fun.Sel.Name]),
		"pos": input.Node.X.Fun.X.NamePos,
	}
}
