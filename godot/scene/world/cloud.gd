extends Area2D

var moved = false

# How far should the cloud sink
var sink_distance = 50

# How long should the clound move
var sink_time = 2

# Time the clound needs to rise back to the original position
var rise_time = sink_time * 1.5


func _on_body_entered(body):
		if body.name == "Player":
			$Uptimer.stop()
			print($Uptimer.time_left)
			var tween = create_tween()
			if !moved && $Uptimer.time_left == 0:
				moved = true
				tween.tween_property(self, "position", position + Vector2(0,sink_distance), sink_time)


func _on_body_exited(body):
		if body.name == "Player":
			$Uptimer.start(3)


func _on_uptimer_timeout():
	if moved:
		var tween = create_tween()
		await(tween.tween_property(self, "position", position - Vector2(0,sink_distance), rise_time))
		await get_tree().create_timer(rise_time).timeout
		moved = false
