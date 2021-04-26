extends Node2D

onready var cast = $CastButton
onready var back = $BackButton
onready var stone = $Stone
onready var text = $Description


func _ready() -> void:
	text.text = ""


func _set_text(rune):
	match rune:
		"f":
			text.text = 'Fehu F - "Cattle" \n\nKEYWORDS: Liquid Wealth, hope, prosperity'
		"u":
			text.text = 'Uruz U - “Auroch” \n\nKEYWORDS: Strength, endurance, health, labor'
		"x":
			text.text = 'Thurisaz N/A - “Giant" \n\nKEYWORDS: Defence, challenge, danger'
		"a":
			text.text = 'Ansuz A - “gods” \n\nKEYWORDS: Speech, Odin'
		"r":
			text.text = 'Raidho R - "Journey" \n\nKEYWORDS: Revelation, signs, visions'
		"k":
			text.text = 'Kenaz K - "Torch" \n\nKEYWORDS: Fire, light, bad luck'
		"g":
			text.text = 'Gebo G - "Gift" \n\nKEYWORDS: Generosity, partnership, gifts'
		"w":
			text.text = 'Wunjo W - "Joy" \n\nKEYWORDS: Pleasure, joy, feast, celebration, comfort'
		"h":
			text.text = 'Hagalaz H - "Hail" \n\nKEYWORDS: Destruction, natural diaster, Opportunity'
		"n":
			text.text = 'Nauthiz N - "Needs" \n\nKEYWORDS: Need, binding, fate, resistance, survival'
		"i":
			text.text = 'Isa I - "Ice" \n\nKEYWORDS: Suspension, delay, stillness, order'
		"j":
			text.text = 'Jeran J - "Harvest" \n\nKEYWORDS: Year, conclusion, harvest, life cycle'
		"y":
			text.text = 'Ihwaz - Y "Yew" \n\nKEYWORDS: Survival, inspiration, endurance, sacred knowledge'
		"p":
			text.text = 'Perthro - P "Vessel" \n\nKEYWORDS: Fate, mysteries, occult, feminine fertility'
		"z":
			text.text = 'Algiz Z - "Elk Sedge" \n\nKEYWORDS: higher self, barrier, trap'
		"s":
			text.text = 'Sowilo S - "Sun" \n\nKEYWORDS: Success, vitality, inspiration, justice'
		"t":
			text.text = 'Tyr T - "Tyr" \n\nKEYWORDS: Leadership, rationality, victory, honor'
		"b":
			text.text = 'Berkana B - "Birch" \n\nKEYWORDS: Fertility, growth, renewal, new beginnings'
		"e":
			text.text = 'Ehwaz E - "Horse" \n\nKEYWORDS: Trust, teamwork, love, partnership, animals, emotion'
		"m":
			text.text = 'Mannaz M - "Human" \n\nKEYWORDS: Progress, movement, harmony, trust, loyalty'
		"l":
			text.text = 'Laguz L - "Water" \n\nKEYWORDS: Sea, intuition, imagination, healing, dreams, mysteries'
		"q":
			text.text = 'Inguz - "Freyr/Seed" \n\nKEYWORDS: Creation, process, evolution, energy'
		"o":
			text.text = 'Othila - O - "Inheritance" \n\nKEYWORDS: Legacy, inheritance, spiritual growth, abundance'
		"d":
			text.text = 'Dagaz D - "Day" \n\nKEYWORDS: Day, awakening, consciousness, clarity, hope, balance, growth'


func _on_CastButton_pressed() -> void:
	stone.anim.play("turn")


func _on_Stone_update_description(rune) -> void:
	_set_text(rune)
