extends Node2D

@onready var timer: Timer = $ClickSpriteGroup/ClickTimer
@onready var click_sprite: Sprite2D = $ClickSpriteGroup/ClickSprite

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		_show_click(event)
		


func _show_click(event: InputEventMouseButton) -> void:
	if !Global.is_right_click_event(event):
		return
	
	timer.start()
	click_sprite.position = event.position
	click_sprite.visible = true
	

func _on_click_timeout() -> void:
	click_sprite.visible = false
