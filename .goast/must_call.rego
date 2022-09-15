package goast

import future.keywords.every

fail[res] {
	input.Kind == "File"
	func := input.Node.Decls[_]
	every stmt in func.Body.List {
		not is_log_func(stmt.X.Fun)
	}

	res = {
		"msg": "utils.Log must be called at least once",
		"pos": func.Name.NamePos,
	}
}

is_log_func(f) {
	f.X.Name == "utils"
	f.Sel.Name == "Log"
}
