extends Area2D

@onready var game : Game = $".."

func _on_area_exited(area):
	if area is Ball:
		game.goal(area)
