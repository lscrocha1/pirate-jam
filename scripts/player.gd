extends CharacterBody2D

class_name Player

const SPEED = 300.0
const BASE_DAMAGE = 40.0

var last_click_position: Vector2

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		_rotate_player()
	
	if event is InputEventMouseButton:
		_move_player(event)

func _rotate_player() -> void:
	rotate(get_angle_to(get_global_mouse_position()) * 0.1)

func _move_player(event: InputEventMouseButton) -> void: 	
	if !Global.is_right_click_event(event):
		return
	
	velocity = global_position.direction_to(event.position) * SPEED
	last_click_position = event.position

func _physics_process(_delta: float) -> void:
	var distance = position.distance_to(last_click_position)
	
	if distance <= 10:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
	
func get_damage() -> float:
	return BASE_DAMAGE
