extends Node2D

onready var Player = load("res://Player/Player.tscn")
var starting_position = Vector2(269,441)


func _ready():
	pass


func _physics_process(_delta):
	if not has_node("Player"):
		var player = Player.instance()
		Global.chips = 3
		player.position = starting_position
		add_child(player)
