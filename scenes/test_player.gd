extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


#func _process(delta):
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_right"):
		#velocity.x += 1
	#if Input.is_action_pressed("ui_left"):
		#velocity.x -= 1
	#if Input.is_action_pressed("ui_down"):
		#velocity.y += 1
	#if Input.is_action_pressed("ui_up"):
		#velocity.y -= 1
	#
	#velocity = velocity * SPEED
	#position += velocity * delta
	

func _physics_process(delta: float) -> void:
	var raw_input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = raw_input * SPEED
	
	move_and_collide(velocity * delta)
	
