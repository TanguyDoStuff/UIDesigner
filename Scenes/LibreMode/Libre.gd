extends Node2D

func _ready():
	$InventoryScreen.visible = false

func _on_backbutton_pressed():
	Global.loadingScene = "res://Scenes/MainMenu/MainMenu.tscn"
	get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")


func _on_inventory_button_pressed():
	$InventoryScreen.visible = true
	get_tree().paused = true
