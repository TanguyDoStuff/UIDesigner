extends Node2D

var BUTTON_PRESSED = false

func _ready():
	$BackgroundImage.texture = load(Global.libreBackground) #Load the background
	$InventoryScreen.visible = false #Hide the inventory screen

func _process(_delta):
	if BUTTON_PRESSED:
		$Transition.start()
		
	

func spawnElement(currentElement):
	var instance = currentElement.instantiate()
	instance.position = get_global_mouse_position()
	add_child(instance)
	

func _on_backbutton_pressed():
	Global.loadingScene = "res://Scenes/LibreMode/BGSelection/BGSelection.tscn"
	ResourceLoader.load_threaded_request(Global.loadingScene) #Start loading the scene
	BUTTON_PRESSED = true

func _on_inventory_button_pressed():
	if not BUTTON_PRESSED:
		$InventoryScreen.visible = true
		get_tree().paused = true


func _on_trash_area_mouse_entered():
	$"TrashArea/TrashCollision/Trash Icon".texture = load("res://Assets/Icons/TrashOpen.png")

func _on_trash_area_mouse_exited():
	$"TrashArea/TrashCollision/Trash Icon".texture = load("res://Assets/Icons/Trash.png")


func _on_inventory_button_mouse_entered():
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_inventory_button_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
