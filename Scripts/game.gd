extends Node2D

class_name Game

@onready var time: Timer = $Timer
@onready var ball: Ball = $Ball

@export var right_player : Player
@export var left_player : Player

func goal_right():
	time.start()

func goal_left():
	time.start()

func _on_timer_timeout():
	ball.start()
