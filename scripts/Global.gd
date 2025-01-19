extends Node

enum MouseClickType { LEFT_CLICK = 1, RIGHT_CLICK = 2 }

func is_right_click_event(event: InputEventMouseButton) -> bool:
	return event.button_index == MouseClickType.RIGHT_CLICK and !event.pressed
