extends Node2D

class_name Game

@onready var reset_time: Timer = $Reset
@onready var start_time: Timer = $Start
@onready var ball: Ball = $Ball

@onready var right_score : Label = $"../Game/Score/Right"
@onready var left_score : Label = $"../Game/Score/Left"

var player1 = 0
var player2 = 0

func _process(_delta):
	if Input.is_key_pressed(KEY_R):
		get_tree().reload_current_scene()
	
	if Input.is_key_pressed(KEY_ESCAPE):
		get_tree().quit()

func _ready():
	start_time.start()

func _on_reset_timeout():
	ball.reset()
	start_time.start()
	
func _on_start_timeout():
	ball.start()
	
func goal(goal_ball : Ball):
	
	if goal_ball.direction.x > 0: player2 += 1
	if goal_ball.direction.x < 0: player1 += 1
	
	goal_ball.stop()
	reset_time.start()
	
	right_score.text = str(player1)
	left_score.text = str(player2)
