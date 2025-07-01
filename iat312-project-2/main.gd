extends Node2D

var nooks
var books
var correctBooks

func _ready():
	nooks = get_node("/root/Main/AnimatedSprite2D4/Node").get_children()
	books = get_node("/root/Main/Books").get_children()
	correctBooks = 0

func bookshelfSolve():
	if nooks.size() == books.size():
		print("solving")
		for i in books.size():
			if books[i].currNook != null && books[i].currNook.answer == books[i].num:
				correctBooks += 1
		if correctBooks == books.size():
			print("huzzah")
		elif correctBooks != books.size():
			correctBooks = 0
