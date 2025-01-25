extends Area2D


func _ready():
	connect("body_entered", on_body_entered)
	
func on_body_entered(body : RigidBody2D) -> void:
	if not body.is_in_group("player"):
		print("pass")
		return
	
	print("collect")
	PlayerVariaveis.pessoas += 1
