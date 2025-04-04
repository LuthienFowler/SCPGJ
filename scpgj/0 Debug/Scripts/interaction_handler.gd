extends Node

var pink_square_interactions = 0
var blue_square_interactions = 0

func _ready() -> void:
	Interactions.interacted.connect(interacted)

func interacted(interactable_name) -> void:
	match interactable_name:
		"Pink Square":
			pink_square_dialogue()
		"Blue Square":
			blue_square_dialogue()

func pink_square_dialogue():
	if pink_square_interactions == 0:
		Interactions.run_dialogue("PinkSquare1")
	pink_square_interactions += 1

func blue_square_dialogue():
	if blue_square_interactions == 0:
		Interactions.run_dialogue("BlueSquare1")
	blue_square_interactions += 1 
