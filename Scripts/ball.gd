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
		
	if position.y <= top_limit or position.y >= bottom_limit: 
		flip_vertical();
	
	position += direction.normalized() *  velocity * delta

func _on_body_entered(body):
	if body.is_in_group("players"):
		flip_horizontal()
		
func flip_horizontal():
	direction.x *= -1

func flip_vertical():
	direction.y *= -1
