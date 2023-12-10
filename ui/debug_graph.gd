extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
    var card = preload("res://card_editor/nodes/Card.tscn")
    $GraphEdit.add_child(card.instantiate())
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    pass
