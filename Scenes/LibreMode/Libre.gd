extends Node2D

func _ready():
	$BackgroundImage.texture = load(Global.libreBackground) #Load the background
	$InventoryScreen.visible = false #Hide the inventory screen

func spawnElement(currentElement):
	var instance = currentElement.instantiate()
	instance.position = get_global_mouse_position()
	add_child(instance)
	

func _on_backbutton_pressed():
	Global.loadingScene = "res://Scenes/LibreMode/BGSelection/BGSelection.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")

func _on_inventory_button_pressed():
	$InventoryScreen.visible = true
	get_tree().paused = true
