package goast

import future.keywords.every

fail[res] {
    input.Kind == "ExprStmt"
    input.Node.X.Fun.X.Name == "fmt"
    input.Node.X.Fun.Sel.Name == "Println"

    res := {
        "msg": "do not use fmt.Println",
        "pos": input.Node.X.Fun.X.NamePos,
        "sev": "ERROR",
    }
}

no_ctx_allow_list = ["main"]

fail[result] {
    func := input.Node.Decls[_]
    func.Body
    every allowed in no_ctx_allow_list {
        func.Name.Name != allowed
    }

    count(func.Type.Params.List) == 0
    result := {
        "msg": sprintf("%s has no arguments, ctx is required at least", [func.Name.Name]),
        "pos": func.Name.NamePos,
        "sev": "error",
    }
}

fail[result] {
    func := input.Node.Decls[_]
    every allowed in no_ctx_allow_list {
        func.Name.Name != allowed
    }

    func.Type.Params.List[0].Type.Name != "context.Context"

    result := {
        "msg": sprintf("%s first argument must be context.Context, actual is %s",
        [func.Name.Name, func.Type.Params.List[0].Type.Name]),
        "pos": func.Name.NamePos,
        "sev": "error",
    }
}

fail[result] {
    func := input.Node.Decls[_]
    every allowed in no_ctx_allow_list {
        func.Name.Name != allowed
    }

    func.Type.Params.List[0].Type.X.Name != "context.Context"

    result := {
        "msg": sprintf("%s first argument must be context.Context, actual is %s",
        [func.Name.Name, func.Type.Params.List[0].Type.X.Name]),
        "pos": func.Name.NamePos,
        "sev": "error",
    }
}
