extends Node2D

export var next_Scene: PackedScene
onready var timer = get_node("NextLevelTimer")

func _ready():
	pass




func _on_Character_wonTheLevel():
	timer.set_wait_time(3)
	timer.start()
	pass # Replace with function body.


func _on_NextLevelTimer_timeout():
	get_tree().change_scene_to(next_Scene)
	pass # Replace with function body.


func _on_Character_characterDied():
	print("game over")
	yield(get_tree().create_timer(3), "timeout")
	get_tree().quit()
	pass # Replace with function body.
