extends Node2D

@onready var road1:Node=$Road1 
@onready var road2:Node=$Road2
@export var player:Node
@onready var current_road:=road1
func cycleRoads(delta,speed):
	road1.position.x-=speed*delta
	road2.position.x-=speed*delta
	if current_road.position.x<=-1162.0:
		current_road.position.x=1153.0
		if current_road==road1:
			current_road=road2
		else:
			current_road=road1
	print(speed)
func _process(delta: float) -> void:
	if player:
		print("cycling")
		cycleRoads(delta,player.SPEED)
