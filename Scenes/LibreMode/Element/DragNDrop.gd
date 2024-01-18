extends Node2D

var selected = false
var mouse_offset = Vector2(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if selected:
		followMouse()	
	elif (position.x >= 1789 and position.x <= 1848) or (position.y >= 689 and position.y <= 826): #Trash position
		free() #Remove itself
		Input.set_default_cursor_shape(Input.CURSOR_ARROW) #Change back to the arrow pointer
		
func followMouse():
	position = get_global_mouse_position() + mouse_offset


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else:
			selected = false


func _on_area_2d_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
