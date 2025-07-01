extends Camera2D
var canLeft
var canRight
var canUp
var canDown

var prevPos
var savedPos

var limit
var goodPos


func _ready():
	self.set_position(Vector2(0,0))
	canLeft = true
	canRight=true
	canUp=true
	canDown=true
	limit = get_node("/root/Main/limits")
	goodPos = [Vector2(0,0),Vector2(2500,0)]

func _process(delta):
	#checkLimits()
	if Input.is_action_just_pressed("right") && canRight == true:
		prevPos = get_global_position()
		self.transform = self.transform.translated(Vector2(2500,0))
		checkLimits()
	if Input.is_action_just_pressed("left") && canLeft == true:
		prevPos = get_global_position()
		self.transform = self.transform.translated(Vector2(-2500,0))
		checkLimits()
	if Input.is_action_just_pressed("up") && canUp == true:
		prevPos = get_global_position()
		self.transform = self.transform.translated(Vector2(0,-1500))
		checkLimits()
	if Input.is_action_just_pressed("down") && canDown == true:
		prevPos = get_global_position()
		self.transform = self.transform.translated(Vector2(0,1500))
		checkLimits()
	if Input.is_action_just_pressed("tab"):
		goToInventory()


func toggleMove():
	canLeft != canLeft
	canRight != canRight
	canUp != canUp
	canDown != canDown

func checkLimits():
	var pos = get_global_position()
	if comparePos(pos) == false:
		self.set_position(prevPos)
		print("going back")
	
	#old stuff below
	#if pos.x >= 2666:
		#canRight = false
		#if pos.y >= 800:
			#canLeft = false
	#if pos.x <= 0:
		#canLeft = false
	#if pos.y <= 0:
		#canUp = false
	#
	#if !(pos.x >= 2666):
		#canRight = true
		#if !(pos.y >= 800):
			#canLeft = true
	#if !(pos.x <= 0):
		#print("lefting")
		#canLeft = true
	#if !(pos.y <= 0):
		#canUp = true

func comparePos(coord):
	var valid = false
	for i in goodPos.size():
		if coord.distance_to(goodPos[i]) ==0:
			valid = true
	return valid 

func goToInventory():
	var pos = get_global_position()
	if pos.distance_to(Vector2(-5067.0,-5067.0)) !=0:
		savedPos = pos
		self.set_position(Vector2(-5067.0,-5067.0))
	else:
		self.set_position(savedPos)
