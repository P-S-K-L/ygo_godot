extends GraphEdit

signal on_graph_click_empty(event)

func _process(delta):
    pass

func _gui_input(event):
    if event is InputEventMouseButton:
        if event.button_index == 1:
            print("click 1")
            emit_signal("on_graph_click_empty", event)
