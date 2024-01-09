extends RefCounted
## 运行时的一个槽，可以是场上一个格子，也可以是手牌
class_name R_Slot

## 槽位可以有0到多张牌的实例在里面
var cards: Array[R_Card]

func is_empty():
    return cards == null or len(cards) == 0
