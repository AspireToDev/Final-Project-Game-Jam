extends Area2D

onready var camera1 = get_node_or_null("/root/Game/Camera1")

func _ready():
	pass


func _on_Fall_death_body_entered(body):
	if body.name == "Player":
		body.queue_free()
		camera1.current = true
