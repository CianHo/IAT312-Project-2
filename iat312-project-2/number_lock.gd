extends Sprite2D

var first
var second
var third
var fourth
var fifth

func _ready():
	first = 0
	second = 0
	third = 0
	fourth = 0
	fifth = 0

func incFirst():
	if first<=8:
		first+=1
	elif first >=9:
		first = 0
	find_child("Label").set_text(str(first))
	print("changing first")

func decFirst():
	if first>=1:
		first-=1
	elif first <=0:
		first = 9
	find_child("Label").set_text(str(first))


func incSecond():
	if second<=8:
		second+=1
	elif second >=9:
		second = 0
	find_child("Label2").set_text(str(second))

func decSecond():
	if second>=1:
		second-=1
	elif second <=0:
		second = 9
	find_child("Label2").set_text(str(second))

func incThird():
	if third<=8:
		third+=1
	elif third >=9:
		third = 0
	find_child("Label3").set_text(str(third))

func decThird():
	if third>=1:
		third-=1
	elif third <=0:
		third = 9
	find_child("Label3").set_text(str(third))

func incFourth():
	if fourth<=8:
		fourth+=1
	elif fourth >=9:
		fourth = 0
	find_child("Label4").set_text(str(fourth))

func decFourth():
	if fourth>=1:
		fourth-=1
	elif fourth <=0:
		fourth = 9
	find_child("Label4").set_text(str(fourth))

func incFifth():
	if fifth<=8:
		fifth+=1
	elif fifth >=9:
		fifth = 0
	find_child("Label5").set_text(str(fifth))

func decFifth():
	if fifth>=1:
		fifth-=1
	elif fifth <=0:
		fifth = 9
	find_child("Label5").set_text(str(fifth))
