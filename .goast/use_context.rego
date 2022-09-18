package goast

fail[res] {
	input.Kind == "FuncDecl"
	not has_context(input.Node.Type.Params.List)

	res := {
		"msg": "first argument must be context.Context",
		"pos": input.Node.Name.NamePos,
	}
}

has_context(args) {
	args[0].Type.X.Name == "context"
	args[0].Type.Sel.Name == "Context"
}
