extends Node
class_name GeneralSlot

@export var config: SlotConfig

func _ready():
    setup()

func setup():
    pass

func l():
    return config.enable_left
    
func r():
    return config.enable_right
    
func slot_type():
    return config.slot_type
