extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$".".hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("pausar"):
		print("pausar")
		pauseMenu()

func pauseMenu():
	if PlayerVariaveis.pausado:
		$".".hide()
		Engine.time_scale = 1
	else:
		$".".show()
		Engine.time_scale = 0
	PlayerVariaveis.pausado = !PlayerVariaveis.pausado
	