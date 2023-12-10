extends GraphNode

#@export var config: NodeConfig

func _ready():
    pass

func setup(config: NodeConfig):
    var slot_index = 0
    var null_t = EditorCommon.SlotType.NULL
    title = config.title
    for slot_config in config.slots:
        var t = slot_config.slot_type
        match t:
            EditorCommon.SlotType.STRING:
                var label = Label.new()
                label.text = slot_config.slot_name
                add_child(label)
                set_slot(slot_index, slot_config.enable_left, t, EditorCommon.slot_color(t), slot_config.enable_right, t, EditorCommon.slot_color(t))
                slot_index += 1
            EditorCommon.SlotType.STRING_EDIT:
                var line_edit = preload("res://card_editor/node_slots/string_input.tscn")
                var instance = line_edit.instantiate()
                instance.get_node("NameLabel").text = slot_config.slot_name
                add_child(instance)
                set_slot(slot_index, slot_config.enable_left, t, EditorCommon.slot_color(t), slot_config.enable_right, t, EditorCommon.slot_color(t))
                slot_index += 1
            _:
                print("ignore type: {}" % slot_config.slot_type)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
