extends StaticBody2D

class_name Player

@export_group("Keys")
@export var up : Key
@export var down : Key

const velocity = 500

func _process(delta: float):
	if Input.is_key_pressed(up):
		position.y -= velocity * delta
	if Input.is_key_pressed(down):
		position.y += velocity * delta

func goal():
	print("goal")
