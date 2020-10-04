extends Sprite

onready var winAreaSpot = get_parent().get_node("Level2BG/ParallaxLayer2/WinAreaSpot")

func _ready():
	pass
	

func _process(delta):

	self.global_position = winAreaSpot.global_position + Vector2(2048, 37)
