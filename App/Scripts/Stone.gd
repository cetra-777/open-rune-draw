extends Area2D

signal update_description(rune)

var rng = RandomNumberGenerator.new()
var rune = ["a","b","d","e",'f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','w','x', 'y', 'z']


onready var anim = $AnimationPlayer


func _draw_rune():
	rune.shuffle()
	var item = rune[0]
	return item


func _on_AnimationPlayer_animation_finished(_anim_name: String) -> void:
	$Label.text = _draw_rune()
	emit_signal("update_description", $Label.text)
