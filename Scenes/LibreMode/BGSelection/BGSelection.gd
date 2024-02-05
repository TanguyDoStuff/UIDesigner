extends Node2D


func bgLoad(): #Go to the Libre mode
	Global.loadingScene = "res://Scenes/LibreMode/Libre.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")

func _on_backbutton_pressed(): #Go Back
	Global.loadingScene = "res://Scenes/MainMenu/MainMenu.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")


func _on_bg_test_1_pressed():
	Global.libreBackground = "res://Assets/LibreBG/kart.png"
	bgLoad()


func _on_bg_test_2_pressed():
	Global.libreBackground = "res://Assets/LibreBG/fps.png"
	bgLoad()
