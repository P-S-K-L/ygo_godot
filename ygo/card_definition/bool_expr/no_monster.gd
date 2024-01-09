extends D_BoolExpr
## 对应描述：没有怪兽存在
class_name D_NoMonster

@export var slots: D_SlotsExpr

func eval(env: R_Env) -> bool:
    var slots: R_Slot = slots.eval(env)
    for slot in slots:
        # FIXME
        if not slot.is_empty():
            return false
    return true
