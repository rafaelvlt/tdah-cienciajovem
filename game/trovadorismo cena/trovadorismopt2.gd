extends Node2D
var flag1 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	flag1 = false
	get_node("UI/Resposta").visible = false
	get_node("UI/Base-02").visible = false
	get_node("UI/próxima fase2").visible = false

func _on_amor_pressed():
	if flag1 == false:
		flag1 = true
		Global.pontos += 100
		get_node("UI/próxima fase2").visible = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta correta! 
Cantiga de Amor!
+ 100 pontos!"
	else:
		pass
func _on_amigo_pressed():
	if flag1 == false:
		flag1 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase2").visible = true
	else:
		pass
func _on_maldizer_pressed():
	if flag1 == false:
		flag1 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase2").visible = true
	else:
		pass
func _on_escarnio_pressed():
	if flag1 == false:
		flag1 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase2").visible = true
	else:
		pass
func _on_próxima_fase_2_pressed():
	get_tree().change_scene_to_file("res://trovadorismo cena/trovadorismopt3.tscn")
