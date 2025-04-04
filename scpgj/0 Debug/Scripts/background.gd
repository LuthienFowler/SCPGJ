extends Node

@onready var right: Button = $Arrows/Right
@onready var left: Button = $Arrows/Left

func _on_right_pressed() -> void:
	if Global.current_state != Global.game_states.EXPLORE: return
	print("Go right")

func _on_left_pressed() -> void:
	if Global.current_state != Global.game_states.EXPLORE: return
	print("Go left")
		
