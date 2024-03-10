extends Area2D

var direction = Vector2(200, 0)

func _process(delta):
	position += direction * delta
	
func horizontal():
	direction.x *= -1
