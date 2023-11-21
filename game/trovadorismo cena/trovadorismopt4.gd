extends Node2D
var flag3 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	flag3 = false
	get_node("UI/Resposta").visible = false
	get_node("UI/Base-02").visible = false
	get_node("UI/próxima fase4").visible = false

func _on_escarnio_pressed():
	if flag3 == false:
		flag3 = true
		Global.pontos += 100
		get_node("UI/próxima fase4").visible = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta correta! 
Cantiga de Maldizer!
+ 100 pontos!"
	else:
		pass
func _on_amor_pressed():
	if flag3 == false:
		flag3 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase4").visible = true
	else:
		pass
func _on_maldizer_pressed():
	if flag3 == false:
		flag3 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase4").visible = true
	else:
		pass
func _on_amigo_pressed():
	if flag3 == false:
		flag3 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase4").visible = true
	else:
		pass
func _on_próxima_fase_4_pressed():
	get_tree().change_scene_to_file("res://trovadorismo cena/trovadorismopt5.tscn")
