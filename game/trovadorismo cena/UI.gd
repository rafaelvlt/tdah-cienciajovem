extends Control

var dialogmanager
var princesa
func _ready():
	dialogmanager = get_node("/root/DialogManager")
	princesa = get_node("../Princesa")
func _on_button_pressed():
			get_tree().change_scene_to_file("res://main.tscn")
		
