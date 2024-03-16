extends Node2D

class_name Game

@onready var restart_time: Timer = $Timer
@onready var ball: Ball = $Ball

func _on_timer_timeout():
	ball.start()
	
func goal(ball : Ball):
	ball.stop()
	restart_time.start()

