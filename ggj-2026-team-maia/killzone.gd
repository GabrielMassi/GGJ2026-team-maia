extends Area2D

@onready var respawn_timer = $Timer
@onready var animation_player = $"../../AnimationPlayer"

func _on_body_entered(body):
	print("You died! The game is about to restart...")
	animation_player.queue_free()
	respawn_timer.start()



func _on_timer_timeout():
	get_tree().reload_current_scene()
