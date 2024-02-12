extends Sprite2D

var TRANSITION_STARTED = false
var DELTA = 0

func _process(delta):
	DELTA = delta
	if position.y < 40 and position.y > -1119 and not TRANSITION_STARTED:
		position.y = position.y - 1700 * DELTA


func start():
	TRANSITION_STARTED = true
	if position.y < 582:
		position.y = position.y + 1700 * DELTA
	else:
		get_tree().change_scene_to_file("res://Scenes/Loading/Loading.tscn")
