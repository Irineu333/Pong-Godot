extends Area2D

const velocity = 400

var direction : Vector2

@export_group("Limits")
@export var top_limit = 0
@export var bottom_limit = 0

func _ready():
	var x = [1, -1].pick_random()
	var y = [1, -1].pick_random()
	
	direction = Vector2(x, y)

func _process(delta):
		
	if position.y <= top_limit or position.y >= bottom_limit: vertical();
	
	position += direction.normalized() *  velocity * delta
	
func horizontal():
	direction.x *= -1

func vertical():
	direction.y *= -1

func _on_body_entered(_body):
	horizontal()
