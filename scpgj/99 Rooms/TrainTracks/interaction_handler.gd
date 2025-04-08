extends Node

var door_interactions = 0

func _ready() -> void:
	Interactions.interacted.connect(interacted)

func interacted(interactable_name) -> void:
	match interactable_name:
		"door":
			run_door_dialogue()

func run_door_dialogue():
	if door_interactions == 0:
		Interactions.run_dialogue("door_1")
	else:
		Interactions.run_dialogue("door_2")
	
	door_interactions += 1
