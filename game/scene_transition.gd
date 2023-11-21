extends CanvasLayer

func change_scene(target: String):
	$transicao.play("dissolve")
	get_tree().change_scene_to_file(target)
	await(_on_transicao_animation_finished('dissolve'))

func _on_transicao_animation_finished(anim_name):
	$transicao.play_backwards('dissolve')
