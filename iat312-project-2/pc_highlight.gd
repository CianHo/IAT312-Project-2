extends "res://highlighter.gd"

func _ready():
	super()

func _process(delta):
	super(delta)
	if moused == true:
		if Input.is_action_just_pressed("click"):
			camera.set_global_position(Vector2(6000,1500))
