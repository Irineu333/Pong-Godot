extends Area2D

var direction = Vector2(200, 200)

func _process(delta):
	position += direction * delta
	
func horizontal():
	direction.x *= -1

func vertical():
	direction.y *= -1
