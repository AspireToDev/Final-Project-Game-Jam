extends KinematicBody2D

onready var SM = $StateMachine

var velocity = Vector2.ZERO
var jump_power = Vector2.ZERO
var direction = 1

export var gravity = Vector2(0,50)

export var move_speed = 300
export var max_move = 300

export var jump_speed = 1600
export var max_jump = 1600

export var leap_speed = 5
export var max_leap = 200

func _ready():
	$StateMachine.set_state("Idle")

func _physics_process(_delta):
	velocity.x = clamp(velocity.x,-max_move,max_move)
	if $State.text != String(jump_power):
		$State.text = String(jump_power)

