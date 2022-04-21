extends Node

export var chips = 3
export var mode = "normal"



func _ready():
	
	pass

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		get_tree().quit()
