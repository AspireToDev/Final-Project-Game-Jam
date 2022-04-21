extends KinematicBody2D

onready var SM = $StateMachine

var velocity = Vector2.ZERO
var jump_power = Vector2.ZERO
var direction = 1

export var gravity = Vector2(0,50)

export var move_speed = 300
export var max_move = 300

export var jump_speed = 2500
export var max_jump = 2500

export var leap_speed = 1700
export var max_leap = 1700

func _ready():
	SM.set_state("Idle")

func _physics_process(_delta):
	if Input.is_action_pressed("jump"):
		jump_power.y = clamp(jump_power.y - jump_speed, -max_jump, 0)
	else:
		jump_power.y = clamp(jump_power.y + jump_speed, -max_jump, 0)
	var temp = String(jump_power) + ' ' + SM.state_name
	if $State.text != temp:
		$State.text = temp

func set_animation(anim):
	if $AnimatedSprite.animation == anim: return
	if $AnimatedSprite.frames.has_animation(anim): $AnimatedSprite.play(anim)
	else: $AnimatedSprite.play()
