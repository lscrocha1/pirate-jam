extends Camera2D
@export var player: CharacterBody2D

@onready var size: Vector2i = get_viewport_rect().size
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_position()
	
func _physics_process(delta: float) -> void:
	update_position()

func update_position() -> void:
	var current_cell: Vector2i = Vector2i(player.global_position) / size
	global_position = current_cell * size
