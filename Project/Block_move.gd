extends Node

onready var SM = get_parent()
onready var player = get_node("../..")
onready var color = get_node_or_null("/root/Game/ColorRect")
onready var mode = Global.mode

func _ready():
	yield(player, "ready")


func start():
	#player.set_animation("Moving")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	
	if Input.is_action_just_pressed("mode_switch"):
		color.visible = false
		Global.mode = "normal"
		SM.set_state("Idle")
		
