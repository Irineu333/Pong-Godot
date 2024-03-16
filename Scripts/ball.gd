extends Area2D

class_name Ball

var velocity = 0

var direction : Vector2
var initial_position : Vector2

@onready var game : Game = $".."

func _ready():
	initial_position = position
	start()

func _process(delta: float):
	position += direction.normalized() *  velocity * delta

func _on_body_entered(body: Node):
	if body.is_in_group("players"):
		flip_horizontal()

func stop():
	visible = false
	velocity = 0
	position = initial_position
	
func start():
	var x = [1, -1].pick_random()
	var y = [1, -1].pick_random()
	
	direction = Vector2(x, y)
	velocity = 500
	visible = true
		
func flip_horizontal():
	direction.x *= -1

func flip_vertical():
	direction.y *= -1
