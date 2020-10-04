extends KinematicBody2D



var velocity = Vector2()
export var jumpForce = 4
export var gravity = 500
var canWin = false

func _ready():
	pass 

func _process(delta):
	if(Input.is_action_just_pressed("Jump") && is_on_floor() == true):
		velocity.y -= jumpForce*6000*delta 
		
	
	velocity = move_and_slide(velocity,Vector2(0,-1),false,4,0.785398,false)	
	velocity.y += gravity*delta
	
	if(Input.is_action_just_pressed("ui_down") && canWin == true):
		queue_free()
		print("you win")
	elif(Input.is_action_just_pressed("ui_down") && canWin == false):
		queue_free()
		print("you lose")



func _on_Area2D_body_entered(body):
	if(body.name == "Character"):
		queue_free()
	pass # Replace with function body.


func _on_WinArea_body_entered(body):
	if(body.name == "Character"):
		canWin = true
	pass # Replace with function body.


func _on_WinArea_body_exited(body):
	if(body.name == "Character"):
		canWin = false
	pass # Replace with function body.
