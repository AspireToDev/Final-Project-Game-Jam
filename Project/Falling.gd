extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var color = get_node_or_null("/root/Game/ColorRect")

func _ready():
	yield(player, "ready")

func start():
	##player.set_animation("Falling")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	if player.is_on_floor() and player.velocity.dot(Vector2.UP) < 0:
		player.velocity.y = 0
		SM.set_state("Idle")
	if player.is_on_ceiling():
		player.velocity.y = 0
	var input_vector = Vector2(Input.get_action_strength("right") - Input.get_action_strength("left"),1.0)
	player.velocity += input_vector + player.gravity
	player.move_and_slide(player.velocity, Vector2.UP)
	if Input.is_action_just_pressed("mode_switch"):
		color.visible = true
		Global.mode = "chip"
		SM.set_state("Block_move")
