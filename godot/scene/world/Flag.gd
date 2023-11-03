extends Node


func _on_finish_area_body_entered(body):
	if body.name == "Player":
		body.finishGame()
