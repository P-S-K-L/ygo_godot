class_name EditorCommon

enum SlotType {
    NULL = 0,
    STRING = 1,
    STRING_EDIT = 2,
    INT = 3,
    EFFECT = 4,
}

static var SLOT_COLORS = [
    Color.PURPLE,
    Color.WHITE,
    Color.WHITE,
    Color.SKY_BLUE,
    Color.CHARTREUSE,
]

static func slot_color(slot_type):
    return SLOT_COLORS[slot_type]
