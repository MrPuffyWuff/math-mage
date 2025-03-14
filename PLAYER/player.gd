extends CharacterBody2D

var Velocity: Vector2 = Vector2(0, 0)
@export var speed: int = 300
@export var gravity: int = 50
@export var jumpPower: int = 1000

func _ready() -> void:
	pass

func _physics_process(_delta):
	#Horizontal Movement
	velocity.x = Input.get_axis("player_walk_left", "player_walk_right") * speed
	#Vertical Movement
	if Input.is_action_pressed("player_jump") and is_on_floor():
		velocity.y = -1 * jumpPower
	elif is_on_floor():
		velocity.y = 0
	else:
		velocity.y += gravity
	move_and_slide()
