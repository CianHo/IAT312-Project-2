extends "res://grabbable_base.gd"

var inv
var found
var desc
var textBox

func _ready():
	super()
	inv = get_node("/root/Main/AnimatedSprite2D5/Inventory")
	found = false
	desc = "sample description"
	textBox = get_node("/root/Main/AnimatedSprite2D5/Label")

func _process(delta):
	if moused == true:
		if Input.is_action_just_pressed("click") && found == true:
			textBox.set_text(desc)
		if Input.is_action_just_pressed("click") && found == false:
			findSlot()
			found = true
		

func findSlot():
	var currSlot
	var slots = inv.get_children()
	for i in slots.size():
		if slots[i].filled == false:
			slots[i].fill()
			self.set_global_position(slots[i].get_global_position())
			break
