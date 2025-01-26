extends Node2D

@onready var pause_menu = $pause
var paused = false
var teste = Vector2(0, 0)

func _process(delta: float) -> void:
	$TextEdit.text = "Pessoas: %d" % PlayerVariaveis.pessoas
	
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("pause"):
		print("pausar")
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	paused = !paused
	PlayerVariaveis.pausado = !PlayerVariaveis.pausado
	
