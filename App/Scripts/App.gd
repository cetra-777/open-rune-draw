extends Node2D

onready var home = $HomeScreen
onready var odin = $OdinScreen
onready var norn = $NornirScreen
onready var flash = $FlashCardScreen
onready var about = $AboutScreen


func _ready() -> void:
	randomize()
	
	home.visible = true
	odin.visible = false
	norn.visible = false
	flash.visible = false
	about.visible = false
	
	# Home Buttons
	home.find_node("OdinDrawButton").connect("pressed", self, "_on_OdinDrawButton_pressed")
	home.find_node("NornirDrawButton").connect("pressed", self, "_on_NornirDrawButton_pressed")
	home.find_node("FlashCardsButton").connect("pressed", self, "_on_FlashCardsButton_pressed")
	home.find_node("AboutButton").connect("pressed", self, "_on_AboutButton_pressed")
	
	# Odin Screen Buttons
	odin.find_node("BackButton").connect("pressed", self, "_on_BackButton_pressed")


func _on_OdinDrawButton_pressed():
	home.visible = false
	odin.visible = true
	norn.visible = false
	flash.visible = false
	about.visible = false


func _on_NornirDrawButton_pressed():
	home.visible = false
	odin.visible = false
	norn.visible = true
	flash.visible = false
	about.visible = false


func _on_FlashCardsButton_pressed():
	home.visible = false
	odin.visible = false
	norn.visible = false
	flash.visible = true
	about.visible = false


func _on_AboutButton_pressed():
	home.visible = false
	odin.visible = false
	norn.visible = false
	flash.visible = false
	about.visible = true


# Back Button
func _on_BackButton_pressed():
	home.visible = true
	odin.visible = false
	norn.visible = false
	flash.visible = false
	about.visible = false
	
	for stone in odin.find_node("Stones").get_children():
		stone.find_node("Sprite").set_frame(0)
