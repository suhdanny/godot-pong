extends CharacterBody2D

var direction = Vector2.LEFT.rotated(PI / 8)
var speed = 300

func _ready():
	print(direction)

func _process(delta):
	var collision = move_and_collide(direction * speed * delta)
	speed += 0.2
	
	if collision:
		var node = collision.get_collider().name
		var borderAngle = PI / 4
		
		if (node == "Player"):
			direction *= Vector2(-1, 1)
			print(direction)
		
		if (node == "Computer"):
			direction *= Vector2(-1, 1)
			print(direction)
			
		if (node == "TopBorder"):
			if direction.x > 0:
				direction = direction.rotated(borderAngle)
			else:
				direction = direction.rotated(-borderAngle)
		
		if (node == "BottomBorder"):
			if direction.x > 0:
				direction = direction.rotated(-borderAngle)
			else:
				direction = direction.rotated(borderAngle)
