extends Node2D
@onready var cloud_node:=$Clouds/TextureRect/Clouds
@onready var ocean_node:=$Ocean/Ocean
@onready var waves_node:=$Ocean/WavesMask/Waves
var wave_sin:float=0.0
func _process(delta: float) -> void:
	cloud_node.texture.noise.offset.x+=delta*10
	ocean_node.texture.noise.offset.x+=delta*10
	wave_sin+=delta*1.5
	waves_node.texture.noise.offset.y=sin(wave_sin)*5
	waves_node.texture.noise.offset.x+=delta*5
	waves_node.texture.noise.frequency=0.0134+(sin(wave_sin)/4000)
