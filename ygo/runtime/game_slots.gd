extends RefCounted
## 一场游戏需要的所有区域
class_name R_GameSlots

var deck_0: R_Slot
var deck_1: R_Slot

var extra_deck_0: R_Slot
var extra_deck_1: R_Slot

var hand_0: R_Slot
var hand_1: R_Slot

var grade_0: R_Slot
var grade_1: R_Slot

var banished_0: R_Slot
var banished_1: R_Slot

# 以下是场上部分

# size 5
var spell_slots_0: Array[R_Slot]
var spell_slots_1: Array[R_Slot]
var monster_slots_0: Array[R_Slot]
var monster_slots_1: Array[R_Slot]

# 从0位置玩家方向看的左和右
var extra_slot_left: R_Slot
var extra_slot_right: R_Slot

func get_monster_slots(player:int) -> Array[R_Slot]:
    assert(player == 0 or player == 1)
    match player:
        0: return monster_slots_0
        1: return monster_slots_1
        _: return monster_slots_0
