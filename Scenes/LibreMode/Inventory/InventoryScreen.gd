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


func _on_povgun_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/povgun.tscn"))


func _on_crosshair_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/crosshair.tscn"))


func _on_inventorybar_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/inventorybar.tscn"))


func _on_mapsquare_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/mapsquare.tscn"))


func _on_mapkart_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/mapkart.tscn"))


func _on_healthbar_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/healthbar.tscn"))


func _on_lapcount_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/lapcount.tscn"))


func _on_scorenumber_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/scorenumber.tscn"))


func _on_scorestar_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/scorestar.tscn"))


func _on_staminabar_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/staminabar.tscn"))


func _on_timer_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/timer.tscn"))


func _on_a_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/abutton.tscn"))


func _on_b_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/bbutton.tscn"))
	
	
func _on_y_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/ybutton.tscn"))
	
	
func _on_x_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/xbutton.tscn"))


func _on_coincount_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/coincount.tscn"))


func _on_compass_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/compass.tscn"))


func _on_portrait_1_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/portrait1.tscn"))


func _on_portrait_2_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/portrait2.tscn"))


func _on_puzzlenext_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/puzzlenext.tscn"))


func _on_dialoguename_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/dialoguename.tscn"))


func _on_dialoguesquare_button_pressed():
	hideInventory()
	get_parent().spawnElement(preload("res://Scenes/LibreMode/Element/dialoguesquare.tscn"))
