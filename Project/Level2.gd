extends Area2D

onready var camera2 = get_node("/root/Game/Camera2")
onready var camera3 = get_node("/root/Game/Camera3")
onready var camera4 = get_node("/root/Game/Camera4")
onready var camera5 = get_node("/root/Game/Camera5")

func _on_Level2_body_entered(body):
	if body.name == "Player":
		Global.chips = 2
		camera2.current = true
		

func _on_Level3_body_entered(body):
	if body.name == "Player":
		Global.chips = 6
		camera3.current = true
		
func _on_Level4_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Win.tscn")
