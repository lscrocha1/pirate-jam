extends Node2D
signal change_scene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		$StartSound.play()
		$AnimationPlayer.play("start")
		$StartTimer.start()
		
		


func _on_start_timer_timeout() -> void:
	change_scene.emit()
