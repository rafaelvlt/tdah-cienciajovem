extends CharacterBody2D

@export var speed : float = 150.0
@onready var animaçãoGuerreiro : AnimatedSprite2D = $AnimatedSprite2D

var destination = Vector2()
var distance = Vector2()
func _ready():
	destination = position
func _process(_delta):
	if(position != destination):
		distance = Vector2(destination - position)
		velocity.x = distance.normalized().x * speed
		velocity.y = distance.normalized().x * 0
		move_and_slide()
		update_animation()
		update_facing_direction()
	pass

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var animationLocked : bool = false
var direction : Vector2 = Vector2.ZERO


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
