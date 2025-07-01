extends Area2D

var grey
var moused

func _ready():
	grey = find_child("ColorRect")
	grey.visible = false
	moused = false

func _process(delta):
	if moused == true:
		if Input.is_action_just_pressed("click"):
			pass

func showGrey():
	grey.visible = true
	moused = true

func hideGrey():
	grey.visible = false
	moused = false
