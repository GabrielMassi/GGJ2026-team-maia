extends CharacterBody2D

var speed:float=300.0

func _process(delta: float) -> void:
	if Input.is_action_pressed("move_right"): 
		self.position.x+=delta*speed
	if Input.is_action_pressed("move_left"): 
		self.position.x-=delta*speed
	self.skew+=10*delta

func _explode():
	self.queue_free()
	
