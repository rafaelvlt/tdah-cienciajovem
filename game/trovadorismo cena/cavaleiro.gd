extends CharacterBody2D

@export var speed : float = 200.0
@export var jumpVelocity : float = -300.0
@onready var animaçãoGuerreiro : AnimatedSprite2D = $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var animationLocked : bool = false
var direction : Vector2 = Vector2.ZERO


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jumpVelocity

	if direction:
		velocity.x = direction.x * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
	update_animation()
	update_facing_direction()
	
func update_animation():
	if not animationLocked:
		if direction.x != 0:
			animaçãoGuerreiro.play("walk")
		else:
			animaçãoGuerreiro.play("idle")
func update_facing_direction():
	if direction.x > 0:
		animaçãoGuerreiro.flip_h = false
	elif direction.x < 0:
		animaçãoGuerreiro.flip_h = true
