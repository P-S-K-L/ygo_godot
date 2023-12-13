class_name CommonType

enum CardType {
    MONSTER = 0,
    MAGIC = 1,
    TRAP = 2,
}

const CARD_TYPE_NAMES: Array[String] = [
    "怪兽卡",
    "魔法卡",
    "陷阱卡"
]

enum CARD_SUB_TYPE {
    # monster
    NORMAL_MONSTER,
    EFFECT_MONSTER,
    RITUAL_MONSTER,
    FUSION_MONSTER,
    SYNCHRO_MONSTER,
    XYZ_MONSTER,
    LINK_MONSTER,
    # spell
    NORMAL_SPELL,
    QUICK_SPELL,
    CONTINUOUS_SPELL,
    EQUIP_SPELL,
    FILED_SPELL,
    RITUAL_SPELL,
    # trap
    NORMAL_TRAP,
    CONTINUOUS_TRAP,
    COUNTER_TRAP,
}

enum CARD_TAGS {
    TOKEN,
    TUNER,
    SPRIT,
    TOON,
    UNION,
    FLIP,
    # TODO: add all tags
}
