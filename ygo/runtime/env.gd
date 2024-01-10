extends RefCounted

## 运行时卡片脚本运算的整体环境
## 每张卡片运算时有自己的一个Env
class_name R_Env

## 持有这个env的卡本身
var self_card: R_Card

## 变量集合
var scope: Dictionary

## 游戏总状态
var game: R_Game

# 每个env都引用到当前游戏使用的所有区域信息

var game_slots: R_GameSlots

func get_my_position() -> int:
    var card: R_Card = self_card
    var current_owner: R_Player = card.current_owner
    return current_owner.position