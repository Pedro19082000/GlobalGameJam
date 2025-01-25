extends Node2D

var teste = Vector2(0, 0)

func _process(delta: float) -> void:
	$TextEdit.text = "Pessoas: %d" % PlayerVariaveis.pessoas
	
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
	
