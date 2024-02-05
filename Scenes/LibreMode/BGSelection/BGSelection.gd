extends Node2D


func bgLoad(): #Go to the Libre mode
	Global.loadingScene = "res://Scenes/LibreMode/Libre.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")

func _on_backbutton_pressed(): #Go Back
	Global.loadingScene = "res://Scenes/MainMenu/MainMenu.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")


func _on_bg_kart_pressed():
	Global.libreBackground = "res://Assets/LibreBG/kart.png"
	bgLoad()


func _on_bgfp_pressed():
	Global.libreBackground = "res://Assets/LibreBG/fp.png"
	bgLoad()


func _on_bg_topdown_pressed():
	Global.libreBackground = "res://Assets/LibreBG/topdown.png"
	bgLoad()


func _on_bgtp_pressed():
	Global.libreBackground = "res://Assets/LibreBG/tp.png"
	bgLoad()


func _on_bg_puzzle_pressed():
	Global.libreBackground = "res://Assets/LibreBG/Puzzle.png"
	bgLoad()
