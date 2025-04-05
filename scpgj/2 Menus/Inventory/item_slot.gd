extends Panel

var in_focus = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interact"):
		print("You interacted w a box!")

func _on_mouse_entered() -> void:
	in_focus = true

func _on_mouse_exited() -> void:
	in_focus = false
