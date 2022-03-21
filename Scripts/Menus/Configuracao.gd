extends Control


#get_node(caminho) pega o nó de qualquer referencia
#$nó pega o nó somente da cena atual/hierarquia
#export (NodePath) ou @"nó" é uma versão mais robusta e com mais opções para carregar já de ante mão
export (NodePath) var dropdown_path
onready var dropdown = $"MarginContainer/VBoxC_Janela/MarginContainer_Buttons/VBoxContainer/Tamanho da Fonte/MarginContainer3/MarginContainer/dropdown"
#não sei quando dos dois usar pro dropdown de tamanho
onready var tamFonte = $"MarginContainer/VBoxC_Janela/MarginContainer_Buttons/VBoxContainer/Tamanho da Fonte/MarginContainer3/MarginContainer/dropdown"
onready var volume = get_node("MarginContainer/VBoxC_Janela/MarginContainer_Buttons/VBoxContainer/Volume/MarginContainer3/MarginContainer/SliderVolume")
onready var nomeJ = get_node("MarginContainer/VBoxC_Janela/MarginContainer_Buttons/VBoxContainer/Nome do Jogador/MarginContainer3/MarginContainer/InputNome")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var volTexto = $"MarginContainer/VBoxC_Janela/MarginContainer_Buttons/VBoxContainer/Volume/MarginContainer3/MarginContainer3/VolTexto"

# Called when the node enters the scene tree for the first time.
func _ready(): 
	volTexto.text = str(volume)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


#func DropdownIniciar():
#	dropdown.add_item("Pequeno",0)
#	dropdown.add_item("Médio",1)
#	dropdown.add_item("Grande",2)




func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://Cenas/Menus/Menu.tscn")


func _on_InputNome_text_changed(new_text):
	#salvar
	pass # Replace with function body.


func _on_SliderVolume_value_changed(value):
	volTexto.text = str(volume)
	#volTexto.set_position(volume.get_position_in_parent())
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume)
	pass # Replace with function body.


func _on_dropdown_item_selected(index):
	# var ControladorJogo.FontTitulo = fontSizeTitulo
	#e assim por diante
	
	pass # Replace with function body.
