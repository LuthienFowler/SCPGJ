extends Control

@onready var resume: Button = $HBoxContainer/Resume
@onready var quit: Button = $HBoxContainer/Quit
var is_active = false

func _ready() -> void:
	visible = false
	is_active = false

func _input(event: InputEvent) -> void:
	if !Input.is_action_just_pressed("openMenu"): return
	
	if !is_active and Global.current_state != Global.game_states.TALK:
		visible = true
		is_active = true
		Global.current_state = Global.game_states.MENU
	else:
		visible = false
		is_active = false
		Global.current_state = Global.game_states.EXPLORE
		

func _on_resume_pressed() -> void:
	visible = false
	is_active = false
	Global.current_state = Global.game_states.EXPLORE

func _on_quit_pressed() -> void:
	get_tree().quit()
