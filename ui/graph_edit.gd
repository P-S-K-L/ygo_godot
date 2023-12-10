extends GraphEdit

signal on_graph_click_empty(event)

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass

func _gui_input(event):
    if event is InputEventMouseButton:
        if event.button_index == 1:
            print("click 1")
            emit_signal("on_graph_click_empty", event)
