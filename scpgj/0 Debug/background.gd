extends Node

@onready var right: Button = $Arrows/Right
@onready var left: Button = $Arrows/Left

func _on_right_pressed() -> void:
	print("\"Go right\" was pressed! It doesn't do anything yet.")

func _on_left_pressed() -> void:
	print("\"Go left\" was pressed! It doesn't do anything yet.")
