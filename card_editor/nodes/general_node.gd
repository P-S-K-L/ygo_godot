extends GraphNode

func _ready():
    setup()

func setup():
    var slot_index = 0
    for child: GeneralSlot in get_children():
        print(child)
        var slot_type = child.slot_type()
        var color = EditorCommon.slot_color(slot_type)
        set_slot(slot_index, child.l(), slot_type, color, child.r(), slot_type, color)
