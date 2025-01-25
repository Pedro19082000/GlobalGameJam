extends Node2D

var teste = Vector2(0, 0)

func _process(delta: float) -> void:
	$TextEdit.text = "Pessoas: %d" % PlayerVariaveis.pessoas
	
