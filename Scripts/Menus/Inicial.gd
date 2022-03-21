extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Jogar_pressed():
	get_tree().change_scene("res://Cenas/Jogo/Jogo.tscn")
	pass # replace with function body


func _on_Pontuacao_pressed():
	get_tree().change_scene("res://Cenas/Menus/Pontuação.tscn")
	pass # replace with function body


func _on_Configuracao_pressed():
	get_tree().change_scene("res://Cenas/Menus/Configuração.tscn")
	pass # replace with function body
