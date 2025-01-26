extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		PlayerVariaveis.pessoas_fase = PlayerVariaveis.pessoas
		PlayerVariaveis.fase = PlayerVariaveis.fase + 1
		var fase = str("res://Fases/fase_", PlayerVariaveis.fase ,".tscn")
		
		get_tree().change_scene_to_file(fase)
