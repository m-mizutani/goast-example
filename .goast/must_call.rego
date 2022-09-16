package goast

import future.keywords.every

fail[res] {
	input.Kind == "FuncDecl"
	every stmt in input.Node.Body.List {
		not is_log_func(stmt.X.Fun)
	}

	res = {
		"msg": "utils.Log must be called at least once",
		"pos": input.Node.Name.NamePos,
	}
}

is_log_func(f) {
	f.X.Name == "utils"
	f.Sel.Name == "Log"
}
