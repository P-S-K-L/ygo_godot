extends Control

var ADD_MENU_CONFIG = [
    {
        name = "卡",
        scene = preload("res://card_editor/nodes/card.tscn"),
    }
]

var add_menu_mouse_position: Vector2

func _ready():
    setup_add_menu()
    pass # Replace with function body.

func setup_add_menu():
    var root = $AddMenu/VBoxContainer
    for c in ADD_MENU_CONFIG:
        var button = Button.new()
        button.text = c.name
        button.pressed.connect(on_add_button_pressed.bind(c))
        root.add_child(button)

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

func on_add_button_pressed(config):
    var scene = config.scene
    var node = scene.instantiate()
    $GraphEdit.add_child(node)
    node.set_position_offset($GraphEdit.scroll_offset + add_menu_mouse_position)
    hide_add_node_menu(null)


func _on_graph_edit_on_graph_click_empty(event):
    if $AddMenu.visible:
        hide_add_node_menu(event)
