extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var color = get_node_or_null("/root/Game/ColorRect")
onready var mode = Global.mode

func _ready():
	yield(player, "ready")


func start():
	player.set_animation("Block_Move")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	
	if Input.is_action_just_pressed("mode_switch"):
		color.visible = false
		Global.mode = "normal"
		if player.is_on_floor():
			SM.set_state("Idle")
		else:
			SM.set_state("Falling")
	if Input.is_action_just_pressed("right"):
		player.position.x += 275
	if Input.is_action_just_pressed("left"):
		player.position.x -= 275
	if Input.is_action_just_pressed("jump"):
		player.position.y -= 275
	if Input.is_action_just_pressed("down"):
		player.position.y += 275
