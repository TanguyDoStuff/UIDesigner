extends Node2D

var BUTTON_PRESSED = false

func _process(_delta):
	if BUTTON_PRESSED:
		$Transition.start()

func bgLoad(): #Go to the Libre mode
	Global.loadingScene = "res://Scenes/LibreMode/Libre.tscn"
	ResourceLoader.load_threaded_request(Global.loadingScene) #Start loading the scene
	BUTTON_PRESSED = true

func _on_backbutton_pressed(): #Go Back
	if not BUTTON_PRESSED:
		Global.loadingScene = "res://Scenes/MainMenu/MainMenu.tscn"
		ResourceLoader.load_threaded_request(Global.loadingScene) #Start loading the scene
		BUTTON_PRESSED = true


func _on_bg_kart_pressed():
	if not BUTTON_PRESSED:
		Global.libreBackground = "res://Assets/LibreBG/kart.svg"
		bgLoad()
	


func _on_bgfp_pressed():
	if not BUTTON_PRESSED:
		Global.libreBackground = "res://Assets/LibreBG/fp.svg"
		bgLoad()


func _on_bg_topdown_pressed():
	if not BUTTON_PRESSED:
		Global.libreBackground = "res://Assets/LibreBG/topdown.png"
		bgLoad()


func _on_bgtp_pressed():
	if not BUTTON_PRESSED:
		Global.libreBackground = "res://Assets/LibreBG/tp.png"
		bgLoad()


func _on_bg_puzzle_pressed():
	if not BUTTON_PRESSED:
		Global.libreBackground = "res://Assets/LibreBG/puzzle.svg"
		bgLoad()
