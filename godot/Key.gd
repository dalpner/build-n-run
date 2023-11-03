extends Area2D

var collected = false

func _on_body_entered(body):
	if body.name == "Player":
		var tween = create_tween()
		if !collected:
			body.keyCollected()
			collected = true
		tween.tween_property(self, "position", position + Vector2(0,-20), 0.3)
		tween.tween_property(self, "modulate:a", 0.0, 0.3)
		tween.tween_callback(self.queue_free)
		
