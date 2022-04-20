extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var mode = Global.mode
onready var color = get_node_or_null("/root/Game/ColorRect")

 

func _ready():
	color.visible = false
	yield(player, "ready")

func start():
	player.velocity = Vector2.ZERO
	##player.set_animation("Idle")

func physics_process(_delta):
	if player.is_on_floor():
		player.velocity.y = 0
	
	if not player.is_on_floor():
		SM.set_state("Falling")
	if Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		SM.set_state("Moving")
	if Input.is_action_pressed("jump") and mode == "normal":
		SM.set_state("Jumping")
	if Input.is_action_just_pressed("mode_switch"):
		color.visible = true
		Global.mode = "chip"
		SM.set_state("Block_move")
	if Input.is_action_just_pressed("eat_chip") and player.is_on_floor():
		SM.set_state("Eat")
