extends CharacterBody2D

@export var Velocity: Vector2 = Vector2(0, 0)
var speed: int = 300
var gravity: int = 50
var jumpPower: int = 1000

func _ready() -> void:
	pass

func _physics_process(_delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -1 * speed
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y = -1 * jumpPower
	elif is_on_floor():
		velocity.y = 0
	else:
		velocity.y += gravity
	print("Y velocity: ",velocity.y)
	move_and_slide()
