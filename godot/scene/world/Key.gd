extends CharacterBody2D


func _on_player_detection_body_entered(body):
	if body.name == "Player":
		print("Key collected")
