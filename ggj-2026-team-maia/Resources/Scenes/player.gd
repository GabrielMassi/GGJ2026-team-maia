extends CharacterBody2D


const SPEED = 76.0
var lanes = [459, 535, 611]
var current_lane = 1;

func _process(delta):

	if Input.is_action_just_pressed("up") and current_lane != 0:
		current_lane -= 1;
		position.y = lanes[current_lane]

	if Input.is_action_just_pressed("down") and current_lane != 2:
		current_lane += 1;
		position.y = lanes[current_lane]

	move_and_slide()
