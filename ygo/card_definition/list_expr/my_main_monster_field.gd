extends D_SlotsExpr
class_name D_Slots_MyMainMonsterField

func eval(env: R_Env) -> Array[R_Slot]:
    var my_position: int = env.get_my_position()
    var game_slots = env.game_slots
    var my_main_monster_filed = game_slots.get_main_monster_slots(my_position)
    return my_main_monster_filed
