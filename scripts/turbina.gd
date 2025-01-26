extends StaticBody2D

@export var wind_force: float = 5

@export var area_vento = 0

var player = 0

# Called when the node enters the scene tree for the first time.

var entrou = false	


func _ready() -> void:
	$Area2D/vento_area.shape.size = Vector2(160, area_vento)


func _process(delta: float) -> void:
	if entrou == true:
		var body = player
		var direction = (body.global_position - global_position).normalized()
		body.apply_central_impulse(direction * wind_force)
		print(wind_force)




func _on_area_2d_body_exited(body):
	if body.is_in_group("player"):
		entrou = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		entrou = true
		player = body
