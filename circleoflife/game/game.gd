extends Node2D

const BASIC_ENEMY = preload("res://enemies/basic_enemy.tscn")
const BULLET = preload("res://bullet/bullet.tscn")

var canShoot = true

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

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("left") and canShoot:
		var new_bullet = BULLET.instantiate()
		new_bullet.position = $pivot/player.global_position
		add_child(new_bullet)
		canShoot = false
		$bulletTimer.start()

func _on_bullet_timer_timeout() -> void:
	canShoot = true
		
