extends Node

export var chips = 0
export var mode = "normal"


func _ready():
	pass

func _unhandled_input(event):
	if Input.is_action_pressed("menu"):
		get_tree().quit()
