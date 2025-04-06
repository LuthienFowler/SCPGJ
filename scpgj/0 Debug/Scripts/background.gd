extends Node

@onready var right: Button = $Arrows/Right
@onready var left: Button = $Arrows/Left

@onready var background_base: Sprite2D = $BackgroundBase

func _on_right_pressed() -> void:
	if Global.current_state != Global.game_states.EXPLORE: return
	
	if background_base.current_area < background_base.number_of_areas:
		background_base.current_area += 1
		background_base.offset.x -= 1152
		print("Go right")
		print(background_base.current_area)
		
	elif background_base.current_area == background_base.number_of_areas:
		print("You cant go right anymore!")
	

func _on_left_pressed() -> void:
	if Global.current_state != Global.game_states.EXPLORE: return
	
	if background_base.current_area > 1:
		background_base.current_area -= 1
		background_base.offset.x += 1152
		print("Go left")
		print(background_base.current_area)
		
	elif background_base.current_area == 1:
		print("You cant go left anymore!")
		
