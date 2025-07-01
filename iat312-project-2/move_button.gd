extends Node
var camera
@export var dest : Vector2

func _ready():
	camera = get_node("/root/Main/Camera2D")

func travel():
	camera.set_global_position(dest)
