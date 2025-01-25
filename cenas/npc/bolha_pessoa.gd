class_name Bolha_npc
extends Area2D




signal coletado

func _ready():
	connect("body_entered", on_body_entered)
	
func on_body_entered(body : RigidBody2D) -> void:
	print("collected")
	queue_free()
