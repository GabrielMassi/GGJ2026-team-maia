extends Node

var enemy_scene: PackedScene = preload("res://Resources/Scenes/enemy.tscn")
var array_positions=[]
func _ready() -> void:
	# get all positions of spawners and set to array
	for s in get_children():
		if s.name.contains("Spawner"):
			array_positions.append(s.position)
func spawnEnemy(type: String = "default",pos3:int=0) -> void:
	# find random pos
	if pos3==0:
		pos3=randi_range(1,3)
	# get speed of player
	var player=get_parent().get_node("Player")
	var speed=0
	if player:
		speed=player.SPEED	
	
	var enemy := enemy_scene.instantiate()
	get_parent().add_child(enemy)
	enemy.position=array_positions[pos3-1]
	if speed!=0:
		enemy.speed=speed
		print(enemy.speed)
	else:
		print("ERROR ON SPEED!!!")
	print("spawned!!")
