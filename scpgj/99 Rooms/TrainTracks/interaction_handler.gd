extends Node

func _ready() -> void:
	Interactions.interacted.connect(interacted)

func interacted(interactable_name) -> void:
	match interactable_name:
		"door":
			print("you interacted with the door")
