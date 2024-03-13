extends Area2D

@export var up : Key
@export var down : Key

const velocity = 500

func _process(delta):
	if Input.is_key_pressed(up):
		position.y -= velocity * delta
	if Input.is_key_pressed(down):
		position.y += velocity * delta

func _on_area_entered(area):
	if area.name == "Ball":
		area.horizontal()
