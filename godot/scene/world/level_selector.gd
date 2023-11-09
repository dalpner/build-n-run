extends Node2D


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scene/world/level/level_1/level_1.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://scene/world/level/level_2/level_2.tscn")
	
func _on_level_3_pressed():
	get_tree().change_scene_to_file("res://scene/world/level/level_3/level_3.tscn")
	
func _on_level_4_pressed():
	get_tree().change_scene_to_file("res://scene/world/level/level_4/level_4.tscn")


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scene/main/main.tscn")
