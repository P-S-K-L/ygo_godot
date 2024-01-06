extends D_Node
class_name D_Effect

## 效果条件
## 除了根据卡片类型判断基础的可发动时间点外，还要condition判断通过才可发动
## 例如，陷阱卡在墓地，那么每个时点会遍历他们，判断condition
@export var condition: D_BoolExpr
## 步骤分为连锁前和连锁后，连锁前就是俗称的cost步骤，但是逻辑上抽象一点，能连锁前进行的操作就是before_chain_steps
## Step间默认的逻辑是“那之后”，也就是说一个步骤失败了，后面的执行不了
# TODO: 是否有后面能执行或者同时执行的效果？
@export var before_chain_steps: Array[D_Step]
@export var steps: Array[D_Step]