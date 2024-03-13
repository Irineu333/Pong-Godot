extends Area2D

const velocity = 400

var direction = Vector2(1, 1)

func _process(delta):
	position += direction.normalized() * velocity * delta
	
func horizontal():
	direction.x *= -1

func vertical():
	direction.y *= -1
