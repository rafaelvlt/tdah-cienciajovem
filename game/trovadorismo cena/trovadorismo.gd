extends Node2D

@onready var cavaleiro = get_tree().get_root().get_node("trovadorismo").get_node("Cavaleiro")
@onready var princesa = get_tree().get_root().get_node("trovadorismo").get_node("Princesa")

func _ready():
	#get_node("próxima fase").visible = false
	#get_node("lapbook").visible = false
	$Timer.start()
	
func _unhandled_input(event):
	if event.is_action_pressed("advance_dialog") and princesa.poemadeclamado == true:
		get_tree().change_scene_to_file("res://main.tscn")
	else:
		return




func _on_timer_timeout():
	get_node("próxima fase").visible = true
	get_node("lapbook").visible = true
