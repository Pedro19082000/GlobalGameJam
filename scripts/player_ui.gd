extends Control



func _process(delta: float) -> void:
	var number = PlayerVariaveis.pessoas + PlayerVariaveis.pessoas_fase
	
	$"HBoxContainer/Label".text = str(number)
