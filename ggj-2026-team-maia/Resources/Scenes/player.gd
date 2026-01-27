extends CharacterBody2D


const SPEED = 76.0
var lane = 2

func _process(delta):


	var direction = Input.get_axis("down", "up")

	if position.y == 459 or position.y == 535 or position.y == 611:
		velocity.y = 0

	#Do jeito que tá agora, o personagem simplesmente teleporta pra outra
	#lane, TODO > criar uma animação pra que a troca de lane seja continua
	if direction > 0 and lane != 1 and velocity.y == 0:		
		position.y += direction * SPEED
		lane-=1
	elif direction < 0 and lane !=3 and velocity.y == 0:
		position.y += direction * SPEED
		lane+=1

	move_and_slide()
