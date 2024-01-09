extends RefCounted
class_name R_Card

var card_def: D_Card

## 每张卡有个env
var env: R_Env
## 哪个玩家的卡
var owner: R_Player
## 众所周知，游戏王可能会用别人的卡
var current_owner: R_Player
