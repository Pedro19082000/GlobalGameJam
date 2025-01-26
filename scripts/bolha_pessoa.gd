extends Area2D



func _ready():
	connect("body_entered", on_body_entered)
	var rng = RandomNumberGenerator.new()
	
	var numero = rng.randi_range(1, 5)
	var filename = str("res://assets/characters/npcs/npc_", numero ,".png")
	var textura = load(filename)
		
	$Personagem.texture = textura
		
func on_body_entered(body : RigidBody2D) -> void:
	if not body.is_in_group("player"):
		print("pass")
		return
	
	print("collect")
	PlayerVariaveis.pessoas += 1
	queue_free()
