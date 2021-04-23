extends Area2D

var button_pressed = false


onready var anim = $AnimationPlayer


func _draw_rune():
	pass


func _on_Stone1_mouse_entered() -> void:
	button_pressed = true


func _on_Stone1_mouse_exited() -> void:
	button_pressed = false
