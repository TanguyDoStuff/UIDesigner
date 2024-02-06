extends Node2D

var BUTTON_PRESSED = false
var GOING_UP = true

func _process(_delta):
	if GOING_UP:
		$Character.position.y = $Character.position.y - 0.5
		$Character.position.x = $Character.position.x + 0.3
		$Fish.position.y = $Fish.position.y - 0.3
		$Fish.position.x = $Fish.position.x - 0.5
	else:
		$Character.position.y = $Character.position.y + 0.5
		$Character.position.x = $Character.position.x - 0.3
		$Fish.position.y = $Fish.position.y + 0.3
		$Fish.position.x = $Fish.position.x + 0.5
	
	if BUTTON_PRESSED:
		$Transition.start()

func _on_animation_timer_timeout():
	if GOING_UP:
		GOING_UP = false
	else:
		GOING_UP = true
	$AnimationTimer.start()


func _on_libre_mode_button_pressed():
	Global.loadingScene = "res://Scenes/LibreMode/BGSelection/BGSelection.tscn"
	ResourceLoader.load_threaded_request(Global.loadingScene) #Start loading the scene
	BUTTON_PRESSED = true


func _on_quit_button_pressed():
	if not BUTTON_PRESSED:
		get_tree().quit()
