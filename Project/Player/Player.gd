extends KinematicBody2D

onready var SM = $StateMachine

var velocity = Vector2.ZERO
var jump_power = Vector2.ZERO
var direction = 1

export var gravity = Vector2(0,30)

export var move_speed = 5
export var max_move = 200

export var jump_speed = 100
export var max_jump = 800

export var leap_speed = 5
export var max_leap = 200
