extends StaticBody2D

@onready var anim = get_node("AnimationPlayer")

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		anim.play("Jump")
		body.jump_pad(2)
