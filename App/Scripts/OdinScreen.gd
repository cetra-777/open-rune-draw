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
			text.text = 'Fehu F - "Cattle" \n\nKEYWORDS: Liquid Wealth, hope, prosperity \n\nAccess or lack there of to liquid wealth or resources is key to the situation. Fehu\'s influence can be a source of comfort or a source of strife.'
		"u":
			text.text = 'Uruz U - “Auroch” \n\nKEYWORDS: Strength, endurance, health, labor \n\nThere is a need for physical labor and solidarity amongst interested parties, especially on the ground workers or laborers.'
		"x":
			text.text = 'Thurisaz N/A - “Giant" \n\nKEYWORDS: Defence, challenge, danger \n\nProceed with caution, primal and powerful forces may be allies or hindrances. Look to nature and the Jotun for guidance.'
		"a":
			text.text = 'Ansuz A - “gods” \n\nKEYWORDS: Speech, Odin \n\nSpeech, writing, or other powers of speech are pivotal in this matter. Look to the One Eyed God for inspiration or guidance.'
		"r":
			text.text = 'Raidho R - "Journey" \n\nKEYWORDS: Revelation, signs, visions \n\nTravel, either spiritual or physical may be coming. This rune suggests that change and flexibility are critical to success.'
		"k":
			text.text = 'Kenaz K - "Torch" \n\nKEYWORDS: Fire, light, bad luck \n\nComplication or frustration may be coming or present. Give yourself permission to feel what is happening and move forward toward comprehension.'
		"g":
			text.text = 'Gebo G - "Gift" \n\nKEYWORDS: Generosity, partnership, gifts \n\nA need for relationship building and exchange is present. Consider you allies or friends and maitenance those relationships.'
		"w":
			text.text = 'Wunjo W - "Joy" \n\nKEYWORDS: Pleasure, joy, feast, celebration, comfort \n\nUsually Wunjo means that circumstances are moving toward a time of peace or the good times. If so enjoy the rest. Be mindful of becoming complacent or selfish as all good things come to an end.'
		"h":
			text.text = 'Hagalaz H - "Hail" \n\nKEYWORDS: Destruction, natural diaster, Opportunity \n\nNow is the time for immediate preparation as hard times are imminent. Part of preparation however is considering how to grow when the trouble passes.'
		"n":
			text.text = 'Nauthiz N - "Needs" \n\nKEYWORDS: Need, binding, fate, resistance, survival \n\nTake stock of what is missing in life. This may be physical needs but is more likely of an emotional or spiritual variety. Can also imply a connection between two or more peoples fate.' 
		"i":
			text.text = 'Isa I - "Ice" \n\nKEYWORDS: Suspension, delay, stillness, order \n\nUsually Isa suggest that now is a time for self-reflection or a pause. Keep a look out for new paths or opportunities though. Remember all ice eventually melts.'
		"j":
			text.text = 'Jeran J - "Harvest" \n\nKEYWORDS: Year, conclusion, harvest, life cycle \n\nA project or relationship is reaching fruition. Now may be a good time to take profits or support your allies with gifts from your surplus. Never forget to keep a portion of the harvest seeds for next years crop.'
		"y":
			text.text = 'Ihwaz - Y "Yew" \n\nKEYWORDS: Survival, inspiration, endurance, sacred knowledge \n\nNow is a time for prayer, reflection, inner strength. It may be a good time to recommit to your oaths or projects.'
		"p":
			text.text = 'Perthro - P "Vessel" \n\nKEYWORDS: Fate, mysteries, occult, feminine fertility \n\nPerthro may be advice to seek counsel from important women, especially caregivers in your life. It may also be a nudge to celebrate like it is Spring regardless of the time of year.'
		"z":
			text.text = 'Algiz Z - "Elk Sedge" \n\nKEYWORDS: higher self, barrier, trap \n\nOften Algiz is a warning that something that seems harmless is in fact dangerous much like the cutting grass it is named for. It may also bea warning to reinforce your walls as danger may be mounting.'
		"s":
			text.text = 'Sowilo S - "Sun" \n\nKEYWORDS: Success, vitality, inspiration, justice \n\nThis rune almost always means either that literal warmth and sunshine will help or a reminder to never give up hope. As the song goes "Just thinking about tomorrow... Tomorrow they\'ll be sun"'
		"t":
			text.text = 'Tyr T - "Tyr" \n\nKEYWORDS: Leadership, rationality, victory, honor \n\nLegal matters may be coming. Alternatively the god Tyr may have wisdom to share with you or you may need to consider his domains of law, oaths, and sky.'
		"b":
			text.text = 'Berkana B - "Birch" \n\nKEYWORDS: Fertility, growth, renewal, new beginnings \n\nBerkana is the rune of new beginnings. Now may be a time for new projects, family planning, or moving forward with your desires. Berkana is also associated with Frigga and may mean she is looking for your attention.'
		"e":
			text.text = 'Ehwaz E - "Horse" \n\nKEYWORDS: Trust, teamwork, love, partnership, animals, emotion \n\nIf animals are a part of your life this may be a time to honor them and give them attention. Otherwise now may be a time for cooperation or travel.'
		"m":
			text.text = 'Mannaz M - "Human" \n\nKEYWORDS: Progress, movement, harmony, trust, loyalty \n\nThe greatest joy comes from shared time with others. Mannaz suggests that family and friends will be a source of strength and joy now or in the near future.'
		"l":
			text.text = 'Laguz L - "Water" \n\nKEYWORDS: Sea, intuition, imagination, healing, dreams, mysteries \n\nLaguz is a rune of mystery, magic, and secrets. Laguz may mean that the supernatural is afoot in your world or that something unseen is happening.'
		"q":
			text.text = 'Inguz - "Freyr/Seed" \n\nKEYWORDS: Creation, process, evolution, energy \n\nInguz is a rune fertility. It suggest a good time to start something new or to give attention to the children in your life. It is also associated with the god Freyr and may mean that he or his domains are relevant to you right now.'
		"o":
			text.text = 'Othila - O - "Inheritance" \n\nKEYWORDS: Legacy, inheritance, spiritual growth, abundance \n\nIt is time to consider your upbringing, your heritage, and the legacy you hope to leave behind.'
		"d":
			text.text = 'Dagaz D - "Day" \n\nKEYWORDS: Day, awakening, consciousness, clarity, hope, balance, growth \n\nThis rune focuses most on the literal light of day and the need for physical time outdoors in the sun. Similar to Sowilo it also has a message of hope for brighter days ahead.'


func _on_CastButton_pressed() -> void:
	stone.anim.play("turn")


func _on_Stone_update_description(rune) -> void:
	_set_text(rune)
