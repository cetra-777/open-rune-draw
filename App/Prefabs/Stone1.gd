extends Area2D

var rng = RandomNumberGenerator.new()
var rune = ["a","b","c","d","e",'f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
var button_pressed = false


onready var anim = $AnimationPlayer


func _draw_rune():
	rune.shuffle()
	var item = rune[0]
	return item


func _on_Stone1_mouse_entered() -> void:
	button_pressed = true


func _on_Stone1_mouse_exited() -> void:
	button_pressed = false


func _on_AnimationPlayer_animation_finished(anim_name: String) -> void:
	$Label.text = _draw_rune()
