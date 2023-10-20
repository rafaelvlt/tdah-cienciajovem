extends Node2D

@onready var cavaleiro = get_tree().get_root().get_node("trovadorismo").get_node("Cavaleiro")
@onready var princesa = get_tree().get_root().get_node("trovadorismo").get_node("Princesa")
func _unhandled_input(event):
	if event.is_action_pressed("advance_dialog") and princesa.poemadeclamado == true:
		get_tree().change_scene_to_file("res://main.tscn")
	else:
		return
