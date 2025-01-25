extends CanvasLayer

@export  var empty_cursor : Texture

func _ready():
	Input.set_custom_mouse_cursor(empty_cursor,Input.CURSOR_ARROW)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mouse_position = get_viewport().get_mouse_position()
	var direction = (mouse_position - PlayerVariaveis.coords).normalized()
	
	#print(direction)
	var angulo = atan2(direction.x, direction.y)
	#print(angulo)
	#var angle = direction.angle()
	
	
	$Sprite2D.rotation = -angulo + -300

	
	$Sprite2D.global_position = Vector2(mouse_position.x, mouse_position.y)
