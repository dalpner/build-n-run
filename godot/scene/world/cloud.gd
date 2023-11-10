extends Area2D

var moved = false

func _on_body_entered(body):
		if body.name == "Player":
			var tween = create_tween()
			if !moved:
				tween.tween_property(self, "position", position - Vector2(0,-20), 0.8)
				moved = true
				


func _on_body_exited(body):
		if body.name == "Player":
			$Uptimer.start()



func _on_uptimer_timeout():
	if moved:
		var tween = create_tween()
		await(tween.tween_property(self, "position", position + Vector2(0,-20), 0.3))
		$MoveTimer.start()


func _on_move_timer_timeout():
	moved = false
