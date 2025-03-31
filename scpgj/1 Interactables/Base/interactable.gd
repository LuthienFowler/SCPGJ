extends Node2D
class_name Interactable

@export var interactable_name = " "
var cursor_in_area = false

func _input(event: InputEvent) -> void:
	if !cursor_in_area: return
	
	if Input.is_action_just_pressed("Interact"):
		print("you have clicked \"" + interactable_name + "!\"")

func _on_area_2d_mouse_entered() -> void:
	cursor_in_area = true

func _on_area_2d_mouse_exited() -> void:
	cursor_in_area = false
