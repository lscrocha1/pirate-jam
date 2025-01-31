extends Node2D
# World scene that handles changing between levels

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_title_menu_change_scene() -> void:
	$TitleMenu.queue_free()
	$Level0.show()
