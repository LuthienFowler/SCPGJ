extends Node

@onready var right: Button = $Arrows/Right
@onready var left: Button = $Arrows/Left
@onready var aweeesome_design_i_promis: ColorRect = $AweeesomeDesignIPromis

func _on_right_pressed() -> void:
	if Global.current_state != Global.game_states.EXPLORE: return
	
	if aweeesome_design_i_promis.current_view == 1:
		print("You went right.")
		aweeesome_design_i_promis.current_view = 2
		aweeesome_design_i_promis.position.x = -1152
	elif aweeesome_design_i_promis.current_view == 2:
		print("You can't go right anymore.")

func _on_left_pressed() -> void:
	if Global.current_state != Global.game_states.EXPLORE: return
	
	if aweeesome_design_i_promis.current_view == 1:
		print("You can't go left anymore.")
	elif aweeesome_design_i_promis.current_view == 2:
		print("You went left.")
		aweeesome_design_i_promis.position.x = 0
		aweeesome_design_i_promis.current_view = 1
		
