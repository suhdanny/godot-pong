extends CharacterBody2D

const speed = 350

func _process(_delta):
	if Input.is_action_pressed("computer up"):
		velocity = Vector2.UP * speed
		move_and_slide()
	
	if Input.is_action_pressed("computer down"):
		velocity = Vector2.DOWN * speed
		move_and_slide()
