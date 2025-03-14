extends Area2D

var player
var GENERIC_TRAIL_PARTICLE = preload("res://MAGIC/generic_trail_particle.tscn")

func _ready() -> void:
	player = $"../Player"
	GENERIC_TRAIL_PARTICLE.texture = "res://ASSETS/red_dot.png"
	GENERIC_TRAIL_PARTICLE.time_visible = 1.0
	GENERIC_TRAIL_PARTICLE.stages = 10
	velocity.x = Vector2(10,0)
	
func _process(delta: float) -> void:
	move_sli
