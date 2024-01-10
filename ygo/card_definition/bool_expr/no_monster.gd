extends D_BoolExpr
## 对应描述：没有怪兽存在
class_name D_NoMonster

@export var slots_expr: D_SlotsExpr

func eval(env: R_Env) -> bool:
    var slots: Array[R_Slot] = slots_expr.eval(env)
    for slot in slots:
        if not slot.is_empty():
            return false
    return true
