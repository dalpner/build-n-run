extends CanvasLayer

var seconds_passed = 45

func _on_timer_timeout():
	seconds_passed -= 1
	$Time.text = "Time wasted: " + str(seconds_passed) + " sec"


func _on_countdown_timeout():
	get_tree().reload_current_scene()



func _on_level_selector_pressed():
	get_tree().change_scene_to_file("res://scene/world/level_selector.tscn")
