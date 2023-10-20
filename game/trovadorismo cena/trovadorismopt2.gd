extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("UI/Resposta").visible = false
	get_node("UI/Base-02").visible = false
	get_node("UI/próxima fase2").visible = false

func _on_amor_pressed():
	get_node("UI/Resposta").visible = true
	get_node("UI/Base-02").visible = true
	get_node("UI/Resposta").text = "Resposta correta! 
Cantiga de Amor!
Originárias da região de Provença
na França apresenta uma expressão
poética sutil e bem elaborada. 
Os sentimentos são expressos com 
mais profundidade, sendo que o 
tema mais frequente é o sofrimento
amoroso.
+ 100 pontos!"
	Global.pontos += 100
	get_node("UI/próxima fase2").visible = true

func _on_maldizer_pressed():
	get_node("UI/Resposta").visible = true
	get_node("UI/Base-02").visible = true
	get_node("UI/Resposta").text = "Resposta Errada 
A correta é: Cantiga de amor!
Originárias da região de Provença
na França apresenta uma expressão
poética sutil e bem elaborada. 
Os sentimentos são expressos com 
mais profundidade, sendo que o 
tema mais frequente é o sofrimento
amoroso."
	get_node("UI/próxima fase2").visible = true
func _on_escarnio_pressed():
	get_node("UI/Resposta").visible = true
	get_node("UI/Base-02").visible = true
	get_node("UI/Resposta").text = "Resposta Errada 
A correta é: Cantiga de amor!
Originárias da região de Provença
na França apresenta uma expressão
poética sutil e bem elaborada. 
Os sentimentos são expressos com 
mais profundidade, sendo que o 
tema mais frequente é o sofrimento
amoroso."
	get_node("UI/próxima fase2").visible = true


func _on_amigo_pressed():
	get_node("UI/Resposta").visible = true
	get_node("UI/Base-02").visible = true
	get_node("UI/Resposta").text = "Resposta Errada 
A correta é: Cantiga de amor!
Originárias da região de Provença
na França apresenta uma expressão
poética sutil e bem elaborada. 
Os sentimentos são expressos com 
mais profundidade, sendo que o 
tema mais frequente é o sofrimento
amoroso."
	get_node("UI/próxima fase2").visible = true


func _on_próxima_fase_2_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
