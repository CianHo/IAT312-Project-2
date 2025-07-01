extends Area2D

@export var filled : bool
@export var answer : int

signal check

func _ready():
	pass


func fill():
	filled = true
	check.emit()

func empty():
	filled = false
