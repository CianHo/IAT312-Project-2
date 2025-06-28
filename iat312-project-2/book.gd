extends "res://grabbable_base.gd"

@export var homePos : Vector2
var nooks
var needsResetting
var currNook

func _ready():
	super()
	nooks = get_node("/root/Main/AnimatedSprite2D4/Node").get_children()
	needsResetting = false


func _process(delta):
	super(delta)
	if homePos != null:
		for i in nooks.size():
			if grabbed == false && self.overlaps_area(nooks[i]) && nooks[i].filled == false:
				homePos = nooks[i].get_global_position()
				nooks[i].fill()
				if needsResetting == false:
					needsResetting = true
					currNook = nooks[i]
				elif needsResetting == true:
					currNook.empty()
					currNook = nooks[i]
		if grabbed == false && self.get_global_position().distance_to(homePos) != 0:
			self.set_global_position(homePos)
