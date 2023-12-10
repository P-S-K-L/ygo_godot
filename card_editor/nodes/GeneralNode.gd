extends GraphNode

@export var config: NodeConfig

func _ready():
    setup()

func setup():
    var slot_index = 0
    var null_t = EditorCommon.SlotType.NULL
    for slot_config in config.slots:
        var t = slot_config.slot_type
        match t:
            EditorCommon.SlotType.STRING:
                var label = Label.new()
                label.text = slot_config.slot_name
                add_child(label)
                set_slot(slot_index, slot_config.enable_left, t, EditorCommon.slot_color(t), slot_config.enable_right, t, EditorCommon.slot_color(t))
                slot_index += 1
            _:
                print("ignore type: {}" % slot_config.slot_type)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
