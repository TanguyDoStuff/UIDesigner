extends Node2D

var selected = false
var mouse_offset = Vector2(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if selected:
		followMouse()	
	elif (position.x >= 1700 and position.x <= 1858) and (position.y >= 700 and position.y <= 836): #Trash position
		free() #Remove itself
		Input.set_default_cursor_shape(Input.CURSOR_ARROW) #Change back to the arrow pointer
		
func followMouse():
	position = get_global_mouse_position() + mouse_offset


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	
	# MOUVEMENT
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_offset = position - get_global_mouse_position()
			selected = true
		else:
			selected = false
			
	# ZOOM IN / OUT
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_WHEEL_DOWN and scale > Vector2(0.5, 0.5):
		scale = scale - Vector2(0.1, 0.1)
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_WHEEL_UP and scale < Vector2(6, 6):
		scale = scale + Vector2(0.1, 0.1)
		
	# ROTATION
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT:
		if event.pressed:
			rotation_degrees = rotation_degrees + 10


func _on_area_2d_mouse_exited():
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
