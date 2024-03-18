extends Area2D

class_name Ball

var velocity = 0

var direction : Vector2
var initial_position : Vector2

@onready var game : Game = $".."

@onready var player_impact : AudioStreamPlayer = $PlayerImpact

@onready var barrier_impact : AudioStreamPlayer = $BarrierImpact

@onready var goal_impact : AudioStreamPlayer = $GoalImpact

func _ready():
	initial_position = position

func _process(delta: float):
	position += direction.normalized() *  velocity * delta

func _on_body_entered(body: Node):
	if body.is_in_group("players"):
		player_impact.play()
		flip_horizontal()

func stop():
	goal_impact.play()
	visible = false
	velocity = 0
	
func reset():
	position = initial_position
	visible = true
	
func start():
	var x = [1, -1].pick_random()
	var y = [1, -1].pick_random()
	
	direction = Vector2(x, y)
	velocity = 500
	visible = true
		
func flip_horizontal():
	barrier_impact.play()
	direction.x *= -1

func flip_vertical():
	barrier_impact.play()
	direction.y *= -1
