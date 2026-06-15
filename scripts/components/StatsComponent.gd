class_name StatsComponent extends Node

signal health_changed(new_health: int)

@export var max_health: int = 100
var current_health: int

func _ready() -> void:
	current_health = max_health

func take_damage(amount: int) -> void:
	current_health -= amount
	health_changed.emit(current_health)
