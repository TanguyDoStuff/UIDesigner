extends Node2D

func hideInventory():
	get_tree().paused = false
	visible = false



func _on_back_button_pressed():
	hideInventory()

func _on_test_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/Test2.tscn"))

func _on_test_button_2_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/Test.tscn"))
