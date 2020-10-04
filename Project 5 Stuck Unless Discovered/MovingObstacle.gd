extends KinematicBody2D

var velocity = Vector2()
export var movementSpeed = 300
onready var endPointPos = get_parent().get_node("StartPoint/Area2D")

func _ready():
	pass 

func _process(delta):
	
	velocity.x = -movementSpeed
	velocity = move_and_slide(velocity,Vector2(0,-1),false,4,0.785398,false)	


func _on_Area2D_body_entered(body):
	if(body.name == "MovingBox"):
		self.position = endPointPos.global_position
