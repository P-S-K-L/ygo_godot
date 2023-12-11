extends "res://card_editor/nodes/general_node.gd"

func setup():
    super()
    $CardType.setup_by_enum(CommonType.CardType, CommonType.CARD_TYPE_NAMES)
