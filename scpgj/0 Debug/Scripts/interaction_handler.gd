extends Node

func _ready() -> void:
	Interactions.interacted.connect(interacted)

func interacted(interactable_name) -> void:
	if interactable_name == "Pink Square":
		print("You interacted with the pink square!")
