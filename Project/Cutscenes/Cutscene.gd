extends Node2D

func _ready():
	var new_dialog = Dialogic.start('Cutscene')
	add_child(new_dialog)
