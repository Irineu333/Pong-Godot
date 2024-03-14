extends StaticBody2D

@export_group("Keys")
@export var up : Key
@export var down : Key

const velocity = 500

func _process(delta):
	if Input.is_key_pressed(up):
		position.y -= velocity * delta
	if Input.is_key_pressed(down):
		position.y += velocity * delta
