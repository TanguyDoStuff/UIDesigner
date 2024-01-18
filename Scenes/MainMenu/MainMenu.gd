extends Node2D



func _on_libre_mode_button_pressed():
	Global.loadingScene = "res://Scenes/LibreMode/BGSelection/BGSelection.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
