class_name CombatComponent extends Node

# Combat component handles the "how" of fighting
func execute_attack(target: Node, damage: int) -> void:
	if target.has_method("take_damage"):
		target.take_damage(damage)
