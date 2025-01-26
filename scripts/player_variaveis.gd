extends Node2D


var pessoas = 0
var pessoas_fase = 0
var fase = 0
var vida = true

var pausado = false



var coords = Vector2(0, 0)

func resetar():
	pausado = false
	Engine.time_scale = 1
	fase = 1
	pessoas = 0
