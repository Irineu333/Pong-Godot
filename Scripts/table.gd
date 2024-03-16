extends Area2D

class_name Table

@onready var game : Game = $".."

func _on_area_exited(area):
	if area is Ball:
		game.goal(area)

func _on_wall_area_entered(area):
	if area is Ball:
		area.flip_vertical()
