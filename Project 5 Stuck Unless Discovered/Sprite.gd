extends Sprite

var jumpForce = Vector2()

func _ready():
	pass 

func _process(delta):
	if(Input.is_action_just_pressed("Jump")):
		jumpForce.y = 5			
		pass
