extends Area2D
@onready var speed=76.0
func _process(delta: float) -> void:
	position.x-=speed*delta
