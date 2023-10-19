extends Control

var dialogmanager
func _ready():
	dialogmanager = get_node("/root/DialogManager")
func _on_button_pressed():
		get_tree().change_scene_to_file("res://main.tscn")
