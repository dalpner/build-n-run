extends Node


func _on_left_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scene/world/world.tscn")


func _on_button_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scene/world/world.tscn")
		
func _on_right_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://scene/world/world.tscn")
