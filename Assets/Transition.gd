extends Sprite2D

func start():
	if position.y < 582:
		position.y = position.y + 30
	else:
		get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")
