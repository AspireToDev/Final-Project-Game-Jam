extends Node2D

func _ready():
	var new_dialog = Dialogic.start('Cutscene2')
	add_child(new_dialog)

func move_spud():
	$Spud/Tween.interpolate_property($Spud, "position", Vector2(404, 329), Vector2(1200,329), 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT, 0)
	$Spud/Tween.start()
