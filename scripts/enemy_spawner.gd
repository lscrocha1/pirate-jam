extends Node2D

@export var default_enemy_squad_size: int = 3

var enemy_scene = preload("res://scenes/enemy.tscn")

func _ready() -> void:
	_spawn_enemies()

func _spawn_enemies() -> void:	
	for _i in default_enemy_squad_size:
		var enemy = enemy_scene.instantiate()
		add_child.call_deferred(enemy)

func _on_timer_timeout() -> void:
	_spawn_enemies()
