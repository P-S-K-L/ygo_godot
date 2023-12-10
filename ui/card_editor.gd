extends Control

var ADD_MENU_CONFIG = [
    {
        name = "卡",
        config = "res://card_editor/nodes/card.tres",
    }
]

var add_menu_mouse_position: Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
    setup_add_menu()
    pass # Replace with function body.

func setup_add_menu():
    var root = $AddMenu/VBoxContainer
    for c in ADD_MENU_CONFIG:
        var button = Button.new()
        button.text = c.name
        button.pressed.connect(on_add_button_pressed.bind(c.config))
        root.add_child(button)

# Called every frame. 'delta' is the elapsed time since the previous frame.
       

func _unhandled_input(event):
    if event.is_action("graph_add_node"):
        show_add_node_menu(event)
        return

func show_add_node_menu(event):
    $AddMenu.visible = true
    add_menu_mouse_position = get_viewport().get_mouse_position()
    $AddMenu.set_position(add_menu_mouse_position)

func hide_add_node_menu(event):
    $AddMenu.visible = false

func on_add_button_pressed(config_path: String):
    var scene = preload("res://card_editor/nodes/general_node.tscn")
    var node = scene.instantiate()
    var config = load(config_path)
    node.setup(config)
    $GraphEdit.add_child(node)
    node.set_position_offset($GraphEdit.scroll_offset + add_menu_mouse_position)
    hide_add_node_menu(null)


func _on_graph_edit_on_graph_click_empty(event):
    if $AddMenu.visible:
        hide_add_node_menu(event)
