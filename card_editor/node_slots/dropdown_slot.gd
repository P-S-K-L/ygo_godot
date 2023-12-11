extends "res://card_editor/general_slot.gd"
class_name DropdownSlot

func setup():
    $Label.text = config.slot_name

# enum type is a dictionary
func setup_by_enum(enum_type: Dictionary, display_list: Array[String]):
    for enum_name in enum_type:
        var value = enum_type[enum_name]
        $DropdownButton.add_item(display_list[value], value)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
