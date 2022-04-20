extends Area2D
#onready var ray = get_node_or_null("/root/Game/Player/Chip/RayCast2D")

#var tile_size = 64
#var inputs = {"right": Vector2.RIGHT,
#			"left": Vector2.LEFT,
#			"jump": Vector2.UP,
#			"down": Vector2.DOWN}

#func _ready():
#	position = position.snapped(Vector2.ONE * tile_size)
#	position += Vector2.ONE * tile_size/2

#func _unhandled_input(event):
#	for dir in inputs.keys():
#		if event.is_action_pressed(dir):
#			move(dir)

#func move(dir):
#	ray.cast_to = inputs[dir] * tile_size
#	ray.force_raycast_update()
#	if !ray.is_colliding():
#		position += inputs[dir] * tile_size
