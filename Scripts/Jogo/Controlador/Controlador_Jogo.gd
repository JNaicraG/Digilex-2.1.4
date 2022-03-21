extends Node

const tipoPeca = "Peca"

func GetTipoPeca():
	return tipoPeca

var ContadorBlocos:int
#var filePath = "res://Palavras_em_br-utf8.txt"
var filePath = "res://Texto/Lista_Reduzida.txt"
var filePathS = "res://Texto/Lista_Reduzida_Silabas.txt" #lita separada sílaba
var palavras:PoolStringArray
var silabas:PoolStringArray #lista separada sílaba
var dKey:int

enum nivel  {
	facil
	medio
	dificil
}

func _ready():
	Load_File()
	
func Load_File(): #0 para lista normal e qualquer outro para sílabas
	var file = File.new()
	#var content:PoolStringArray #fazer verificação depois
	#if (n == 0):
		#print("zero")
	file.open(filePath, File.READ)
	while !file.eof_reached():
		palavras.append(file.get_line())
	#palavras = file.get_as_text()
	file.close()
	#else:
		#print("UM")
	file.open(filePathS, File.READ)
	while !file.eof_reached():
		silabas.append(file.get_line())
	#var content = file.get_as_text()
	file.close()
	return 


func EscolherPalavraInicial(): #Palavra
	dKey = randi() % palavras.size()
	return palavras[dKey]
	#var pChave = ControladorJogo.palavras[rand_range(0,ControladorJogo.palavras.size())]

func EscolherSilabas(): #Palavra
	return silabas[dKey]	
	
func EscolherNovaPalavra(var p:String):#Palavra e UltimaPalavra
	var uP = p
	p = palavras[randi() % palavras.size()]
	if p == uP:
		EscolherNovaPalavra(p)
	else:
		return p
	




#Arrumar pro TCC

#func SepararSilabas(var p:String)->void:
#	var dic = {"nome":0}
#	var dKey = 0
#	var loop =[]
#	loop.clear()
#	for i in range(0,p.length()):
#		loop.append(p[i])
#		if i % 2 == 0 and i != 0:
#			dic[dKey] = loop
#			++dKey
#			print(i,"ª sílava: ", dic[0])
#			loop.clear()
#	#return dic
#
#
#func VerificarSilaba(var p:StringPoolArray, var n:int):
#	for i in p.length():
#		if i % 2 != 0:
#			if VerificarVogal(p[n+1]):
#				return false
	
#func VerificarVogal(var c:Character):
#	 if c in ('a'; 'e'; 'i'; 'o'; 'u'):
#		return True
#pass
###Modificar código abaixo para não pegar o texto DROPPADO no arquivo, mas sim o caminho que queremos


######Tentativa antiga######

#onready var file = "res://Cenas/Texto/Palavras_em_br-utf8.txt"
#var palavras =[]
#
## Declare member variables here. Examples:
## var a = 2
## var b = "text"
#
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass
#
#
#func StartPalavras() -> void:
#	load_file()
#
#
#func load_file() -> void:
#	var f = File.new()
#	var index = 1
#	#var line =[]
#	f.open(file, _File.READ)
#	while !f.eof_reached():
#		print("Linha", i)
#		palavras += f.get_line()
#		#palavras.append(f.get_line())
#		f.close()
#		index++
#	return 
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
#
#func Print() -> void:
#		print ("apertou Espaço")
#		for s in palavras:
#			print(s)
##	pass'
