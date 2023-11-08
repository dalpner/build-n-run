extends Node


func _on_level_body_exited(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
