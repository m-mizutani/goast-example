package goast

fail[out] {
	input.Kind == "DeclStmt"
	spec := input.Node.Decl.Specs[_]
	spec.Type.X.Name == "model"
	spec.Type.Sel.Name == "User"

	out := {
		"msg": "User must be created with constructor",
		"pos": spec.Type.X.NamePos,
	}
}

fail[out] {
	input.Kind == "AssignStmt"
	n := input.Node.Rhs[_]
	n.Type.X.Name == "model"
	n.Type.Sel.Name == "User"

	out := {
		"msg": "User must be created with constructor",
		"pos": n.Type.X.NamePos,
	}
}

fail[out] {
	input.Kind == "AssignStmt"
	n := input.Node.Rhs[_]
	n.X.Type.X.Name == "model"
	n.X.Type.Sel.Name == "User"

	out := {
		"msg": "User must be created with constructor",
		"pos": n.X.Type.X.NamePos,
	}
}
