extends StaticBody2D


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		if body.collectCount > 0:
			$AnimatedSprite2D.animation = "Disapear"
			await get_tree().create_timer(1).timeout
			queue_free()
