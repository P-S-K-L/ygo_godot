class_name EditorCommon

enum SlotType {
    NULL = 0,
    STRING = 1,
    INT = 3,
    ENUM = 4,
    EFFECT = 5,
}

static var SLOT_COLORS = [
    Color.PURPLE,
    Color.WHITE,
    Color.SKY_BLUE,
    Color.PINK,
    Color.CHARTREUSE,
]

static func slot_color(slot_type):
    return SLOT_COLORS[slot_type]
