extends "res://card_editor/general_slot.gd"
class_name DropdownSlot

signal on_value_changed(name: String, value: int)

func setup():
    $Label.text = config.slot_name
    $DropdownButton.item_selected.connect(_on_item_selected)

# enum type is a dictionary
func setup_by_enum(enum_type: Dictionary, display_list: Array[String]):
    for enum_name in enum_type:
        var value = enum_type[enum_name]
        $DropdownButton.add_item(display_list[value], value)
        
func setup_detailed(value_list: Array[int], name_list: Array[String]):
    assert(value_list.size() == name_list.size())
    for i in range(value_list.size()):
        $DropdownButton.add_item(name_list[i], value_list[i])
    
func clear():
    for child in $DropdownButton.get_children():
        child.queue_free()

func _on_item_selected(index: int):
    var name = $DropdownButton.get_item_text(index)
    var value = $DropdownButton.get_item_id(index)
    emit_signal("on_value_changed", name, value)
