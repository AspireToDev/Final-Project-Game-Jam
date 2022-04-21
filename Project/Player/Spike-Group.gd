extends Node2D
onready var camera1 = get_node_or_null("/root/Game/Camera1")

func _ready():
	pass


func _on_Spikes_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true



func _on_Long_Left_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true
func _on_Short_Middle_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true
func _on_Long_Middle_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true
func _on_Long_Right_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true
func _on_Short_Right_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true
