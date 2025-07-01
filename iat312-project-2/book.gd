extends "res://grabbable_base.gd"

@export var homePos : Vector2
@export var num : int
var nooks
var needsResetting
@export var currNook : Node

func _ready():
	super()
	nooks = get_node("/root/Main/Shelf/Node").get_children()
	needsResetting = true


func _process(delta):
	super(delta)
	if homePos != null:
		for i in nooks.size():
			if grabbed == false && self.overlaps_area(nooks[i]) && nooks[i].filled == false:
				homePos = nooks[i].get_global_position()
				if needsResetting == false:
					needsResetting = true
					currNook = nooks[i]
					nooks[i].fill()
				elif needsResetting == true:
					currNook.empty()
					currNook = nooks[i]
					nooks[i].fill()
		if grabbed == false && self.get_global_position().distance_to(homePos) != 0:
			self.set_global_position(homePos)
