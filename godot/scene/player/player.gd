extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var anim = get_node("AnimationPlayer")
@onready var sprite = get_node("AnimatedSprite2D")

func jump_pad(factor):
	velocity.y = JUMP_VELOCITY * factor
	velocity.x = JUMP_VELOCITY * -2 * factor


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")

	if direction == -1:
		sprite.set_flip_h(false);
	if direction == 1:
		sprite.set_flip_h(true);
		

	if direction:
		velocity.x = direction * SPEED
		anim.play("Run")
	else:
		if velocity.y != 0:
			anim.play("Jump")
			rotate(velocity.x)
		if velocity.y == 0:
			velocity.x = move_toward(velocity.x, 0, SPEED)
			anim.play("Idle")

	move_and_slide()
