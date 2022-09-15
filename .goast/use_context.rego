package goast

import future.keywords.every

fail[res] {
	func := input.Node.Decls[_]
	func.Body
	not has_context(func.Type.Params.List)

	res := {
		"msg": "first argument must be context.Context",
		"pos": func.Name.NamePos,
	}
}

has_context(args) {
	args[0].Type.X.Name == "context"
	args[0].Type.Sel.Name == "Context"
}
