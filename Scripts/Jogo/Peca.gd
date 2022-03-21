extends Node2D

#var tipo = ControladorJogo.tipoPeca
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var id = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
#	print("MousePos:",get_viewport().get_mouse_position())
#	print("Posição Peça ",id, ": ",global_position)


func SetTexto(var t): #:= String
	get_node("KinematicBody2D/Button/Palavra").text = t
	#$KinematicBody2D/Button/Label.text = t

func SetId(var t): #:int
	id = t

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
