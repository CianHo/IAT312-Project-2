extends Button
var camera

func _ready():
	camera = get_node("/root/Main/Camera2D")

func travel():
	camera.set_global_position(Vector2(0,0))
