extends Node2D

func hideInventory():
	get_tree().paused = false
	visible = false


func _on_back_button_pressed():
	hideInventory()

func _on_heart_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/heart.tscn"))


func _on_rank_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/rank.tscn"))


func _on_itemkart_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/itemkart.tscn"))


func _on_povpickaxe_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/povpickaxe.tscn"))
