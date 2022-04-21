extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var color = get_node_or_null("/root/Game/ColorRect")
onready var label = get_node_or_null("/root/Game/Camera1/Chip_Count")
onready var mode = Global.mode

onready var right = get_node_or_null("Right")
onready var left = get_node_or_null("Left")
onready var up = get_node_or_null("Up")
onready var down = get_node_or_null("Down")

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
		#if right != null:
		#	right.position.x += 275
		#	if right.is_not_colliding:
		#		player.position.x += 275
		#	else: 
		#		right.position.x -= 275
		#else: 
		#	print("It is null")
		if Global.chips > 0:
			player.position.x += 275
			Global.chips -= 1
			label.ready()
	if Input.is_action_just_pressed("left"):
		if Global.chips >0: 
			player.position.x -= 275
			Global.chips -= 1
			label.ready()
	if Input.is_action_just_pressed("jump"):
		if Global.chips >0: 
			player.position.y -= 275
			Global.chips -= 1
			label.ready()
	if Input.is_action_just_pressed("down"):
		if Global.chips > 0:
			player.position.y += 275
			Global.chips -= 1
			label.ready()
