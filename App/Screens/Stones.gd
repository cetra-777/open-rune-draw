extends Node2D

func _unhandled_input(event: InputEvent) -> void:
	var stones = get_children()
	if event.is_pressed() and event.button_index == BUTTON_LEFT:
		for stone in stones:
			if stone.button_pressed:
				stone.anim.play("turn")
			else:
				stone.visible = false
