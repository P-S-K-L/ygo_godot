extends D_BoolExpr

## 判断数组是否为空
class_name D_ListEmpty

@export var list_expr: D_ListExpr

func eval(env: R_Env) -> bool:
    var ls = list_expr.eval()
    return len(ls) == 0
