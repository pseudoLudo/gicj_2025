extends Node2D

const BASIC_ENEMY = preload("res://enemies/basic_enemy.tscn")


func _on_basic_enemy_timer_timeout() -> void:
	var new_b_e = BASIC_ENEMY.instantiate()
	if randi_range(0,10) % 2 == 0:
		new_b_e.position = Vector2(-15,randi_range(20,620))
		add_child(new_b_e)
	else :
		new_b_e.speed = -200 
		new_b_e.flip = true
		new_b_e.position = Vector2(1200,randi_range(20,620))
		add_child(new_b_e)
