extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("area_entered", on_area_entered)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_area_entered(area : Area2D):
	if area == null:
		return
	if area is Bolha_npc:
		area.emit.signal("collected_entity")
