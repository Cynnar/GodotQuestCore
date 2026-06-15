class_name InventoryComponent extends Node

# Store references to Resource objects
var items: Array[BaseItem] = [] 

signal inventory_updated(new_items: Array[BaseItem])

func add_item(item: BaseItem) -> void:
	items.append(item)
	inventory_updated.emit(items)
