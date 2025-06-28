extends Area2D

var moused
var grabbed
var shape

func _ready():
	moused = false
	grabbed = false
	#shape = self.find_child("CollisionShape2D")

func _process(delta):
	if moused == true:
		if Input.is_action_just_pressed("click"):
			grabbed = true
	if grabbed ==true:
		self.set_position(get_global_mouse_position())
		if Input.is_mouse_button_pressed(1) == false:
			grabbed = false

func hovered():
	moused = true

func ignored():
	moused = false
