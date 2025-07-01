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
	check()

func decFirst():
	if first>=1:
		first-=1
	elif first <=0:
		first = 9
	find_child("Label").set_text(str(first))
	check()


func incSecond():
	if second<=8:
		second+=1
	elif second >=9:
		second = 0
	find_child("Label2").set_text(str(second))
	check()

func decSecond():
	if second>=1:
		second-=1
	elif second <=0:
		second = 9
	find_child("Label2").set_text(str(second))
	check()

func incThird():
	if third<=8:
		third+=1
	elif third >=9:
		third = 0
	find_child("Label3").set_text(str(third))
	check()

func decThird():
	if third>=1:
		third-=1
	elif third <=0:
		third = 9
	find_child("Label3").set_text(str(third))
	check()

func incFourth():
	if fourth<=8:
		fourth+=1
	elif fourth >=9:
		fourth = 0
	find_child("Label4").set_text(str(fourth))
	check()

func decFourth():
	if fourth>=1:
		fourth-=1
	elif fourth <=0:
		fourth = 9
	find_child("Label4").set_text(str(fourth))
	check()

func incFifth():
	if fifth<=8:
		fifth+=1
	elif fifth >=9:
		fifth = 0
	find_child("Label5").set_text(str(fifth))
	check()

func decFifth():
	if fifth>=1:
		fifth-=1
	elif fifth <=0:
		fifth = 9
	find_child("Label5").set_text(str(fifth))
	check()

func check():
	if first == 3 && second == 5 && third == 1 && fourth == 2 && fifth == 4:
		print("opened")
