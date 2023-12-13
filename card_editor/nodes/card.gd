extends "res://card_editor/nodes/general_node.gd"

func setup():
    super()
    $CardType.setup_by_enum(CommonType.CardType, CommonType.CARD_TYPE_NAMES)
    $CardType.on_value_changed.connect(_on_card_type_changed)

func _on_card_type_changed(name: String, card_type: CommonType.CardType):
    print(name)
    print(card_type)
