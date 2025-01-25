extends Node2D

var teste = Vector2(0, 0)
var velocidade = -0.05

var entrou = false
var pessoas = 0
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and entrou == true:
		assoprar()

func assoprar():
	var mouse = get_viewport( ).get_mouse_position()
	var player = $".".position
	var resultado =  mouse - player
	var vetor = resultado * velocidade
	$".".apply_central_impulse(vetor)

func _on_raio_da_bolha_mouse_entered() -> void:
	entrou = true

func _on_raio_da_bolha_mouse_exited() -> void:
	entrou = false
