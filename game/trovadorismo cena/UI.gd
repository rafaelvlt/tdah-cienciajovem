extends Control

var dialogmanager
var princesa
func _ready():
	dialogmanager = get_node("/root/DialogManager")
	princesa = get_node("../Princesa")
func _on_button_pressed():
		if DialogManager.is_dialog_active == false:
			get_tree().change_scene_to_file("res://main.tscn")
		else:
			return


func _on_próxima_fase_pressed():
	if DialogManager.is_dialog_active == false:
		get_tree().change_scene_to_file("res://trovadorismo cena/trovadorismopt2.tscn")
