extends Node2D

@export var texture : Texture2D #Particle Texture
@export var time_visible : float #Time before deleting particle
@export var stages : int #Times particle fades

var visibilityReduction = 255 / stages

func _ready() -> void:
	$Sprite2D.texture = self.texture
	$Timer.wait_time = time_visible / stages

func _process(delta: float) -> void:
	$Timer.start()
	await $Timer.timeout
	$Sprite2D.self_modulate.A -= visibilityReduction
	stages -= 1
	if stages == 0:
		queue_free()
