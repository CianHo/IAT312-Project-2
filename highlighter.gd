extends Area2D

var camera
var grey
var moused

func _ready():
	grey = find_child("ColorRect")
	grey.visible = false
	moused = false
	camera = get_node("/root/Main/Camera2D")

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

func move(place : Vector2):
	if moused == true:
		if Input.is_action_just_pressed("click"):
			camera.set_global_position(place)
