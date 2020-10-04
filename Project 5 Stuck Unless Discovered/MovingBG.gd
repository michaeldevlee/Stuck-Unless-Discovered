extends Node2D


onready var winAreaSpot = get_node("Background/ParallaxLayer2/WinAreaSpot")

func _ready():
	pass
	

func _process(delta):

	self.global_position = winAreaSpot.global_position + Vector2(2048, 37)
