extends Node2D

class_name Game

@onready var restart_time: Timer = $Timer
@onready var ball: Ball = $Ball

@onready var right_score : Label = $"../Game/Score/Right"
@onready var left_score : Label = $"../Game/Score/Left"

var player1 = 0
var player2 = 0

func _on_timer_timeout():
	ball.start()
	
func goal(goal_ball : Ball):
	
	if goal_ball.direction.x > 0: player2 += 1
	if goal_ball.direction.x < 0: player1 += 1
	
	goal_ball.stop()
	restart_time.start()
	
	right_score.text = str(player2)
	left_score.text = str(player1)
