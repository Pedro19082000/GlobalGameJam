extends Node2D
@export var wind_force: float = 200
@onready var area = $Area2D

# Called when the node enters the scene tree for the first time.




func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group("player"):
		print("aaa")
		var direction = (body.global_position - global_position).normalized()
		body.apply_central_impulse(direction * wind_force)


func _on_area_2d_body_exited(body):
	if body.is_in_group("player"):
		print("saiu")
