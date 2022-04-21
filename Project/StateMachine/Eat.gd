extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	#player.set_animation("Moving")
	player.jump_power = Vector2.ZERO

func physics_process(_delta):
	#Play chip anim
	SM.set_state("Idle")
