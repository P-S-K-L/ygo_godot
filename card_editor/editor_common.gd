class_name EditorCommon

enum SlotType {
    NULL = 0,
    STRING = 1,
    INT = 2,
    EFFECT = 3,
}

static var SLOT_COLORS = [
    Color.PURPLE,
    Color.WHITE,
    Color.SKY_BLUE,
    Color.CHARTREUSE,
]

static func slot_color(slot_type):
    return SLOT_COLORS[slot_type]
