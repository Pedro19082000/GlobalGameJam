extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().reload_current_scene()


func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
