extends Node

signal interacted(interactable_name: String)

func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)

func run_dialogue(dialogue_name: String) -> void:
	Dialogic.start(dialogue_name)

func _on_dialogic_signal(arg) -> void:
	match arg:
		"start":
			Global.current_state = Global.game_states.TALK
		"end":
			Global.current_state = Global.game_states.EXPLORE
