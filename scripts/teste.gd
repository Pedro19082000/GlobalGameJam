extends Node2D

var teste = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(teste)
func _input(event):
	# Mouse in viewport coordinates.
	var mouse = get_viewport( ).get_mouse_position()
	var player = $Corpo.position
	var resultado =  mouse - player
	#print(resultado)
	var vetor = resultado * -0.02
	teste = vetor
	$Corpo.apply_central_impulse(teste)
	
