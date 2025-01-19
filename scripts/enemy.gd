extends CharacterBody2D

class_name Enemy

const SPEED = 100.0
var health = 200

var player: Player

func _ready() -> void:
	_set_random_position()

func _physics_process(_delta: float) -> void:
	player = get_tree().get_first_node_in_group("player")
	velocity = global_position.direction_to(player.position) * SPEED

	if move_and_slide():
		_hit()

func _hit() -> void:
	health -= player.get_damage()
		
	if health <= 0:
		queue_free()
		
func _set_random_position() -> void:
	var random_side = randi() % 4
	
	var screen_size = get_viewport().get_visible_rect().size
	
	var spawn_position = Vector2.ZERO
	
	match random_side:
		0:
			spawn_position = Vector2(-50, randf_range(0, screen_size.y))
		1:
			spawn_position = Vector2(screen_size.x + 50, randf_range(0, screen_size.y))
		2:
			spawn_position = Vector2(randf_range(0, screen_size.x), -50)
		3:
			spawn_position = Vector2(randf_range(0, screen_size.x), screen_size.y + 50)
	
	position = spawn_position
		
