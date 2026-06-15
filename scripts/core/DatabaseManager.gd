extends Node

var item_database: Dictionary = {}

func _ready() -> void:
	load_data()

func load_data() -> void:
	# Example of loading JSON data
	var file := FileAccess.open("res://data/items.json", FileAccess.READ)
	var json_text := file.get_as_text()
	item_database = JSON.parse_string(json_text)
