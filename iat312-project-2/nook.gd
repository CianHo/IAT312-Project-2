extends Area2D

var filled

signal check

func _ready():
	filled = false


func fill():
	filled = true
	check.emit()

func empty():
	filled = false
