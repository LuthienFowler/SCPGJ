extends Node2D
class_name Interactable

@export var interactable_name = " "


func _on_areas_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Input.is_action_just_pressed("interact") and Global.current_state == Global.game_states.EXPLORE:
		Interactions.interacted.emit(interactable_name)
