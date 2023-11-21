extends Node2D
var flag2 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	flag2 = false
	get_node("UI/Resposta").visible = false
	get_node("UI/Base-02").visible = false
	get_node("UI/próxima fase3").visible = false

func _on_media_pressed():
	if flag2 == false:
		flag2 = true
		Global.pontos += 100
		get_node("UI/próxima fase3").visible = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta correta! 
Idade média!
+ 100 pontos!"
	else:
		pass
func _on_moderna_pressed():
	if flag2 == false:
		flag2 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase3").visible = true
	else:
		pass
func _on_antiga_pressed():
	if flag2 == false:
		flag2 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase3").visible = true
	else:
		pass
func _on_prehistoria_pressed():
	if flag2 == false:
		flag2 = true
		get_node("UI/Resposta").visible = true
		get_node("UI/Base-02").visible = true
		get_node("UI/Resposta").text = "Resposta Incorreta.
		Volte ao Lapbook"
		get_node("UI/próxima fase3").visible = true
	else:
		pass
func _on_próxima_fase_3_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
