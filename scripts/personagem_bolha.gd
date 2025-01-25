extends Node2D

var teste = Vector2(0, 0)
var velocidade = -0.05

var pessoas_incial = PlayerVariaveis.pessoas

var entrou = false
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and entrou == true:
		assoprar()
	PlayerVariaveis.coords = $".".position
	
	if pessoas_incial < PlayerVariaveis.pessoas:
		pessoas_incial = PlayerVariaveis.pessoas
		aumentar()
	

func aumentar():
	$CollisionShape2D.scale = $CollisionShape2D.scale + Vector2(1, 1)
	$Raio_da_bolha.scale = $Raio_da_bolha.scale + Vector2(0.5,0.5)
	$Sprite2D.scale = $Sprite2D.scale + Vector2(1, 1)
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
