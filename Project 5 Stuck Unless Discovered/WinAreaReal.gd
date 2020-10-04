extends Sprite

onready var winAreaSpot = get_parent().get_node("Background/ParallaxLayer2/WinAreaSpot")

func _ready():
	pass
	

func _process(delta):

	self.global_position = winAreaSpot.global_position + Vector2(3072, 37)
