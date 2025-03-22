extends Area2D

const BULLET = preload("res://bullet/bullet.tscn")



func _process(delta: float) -> void:
	$Sprite2D.rotation -= 1 * delta

func _on_game_playerhit() -> void:
	$Sprite2D.animation = "hit"
	$playhit.play()
	$Timer.start()

func _on_timer_timeout() -> void:
	$Sprite2D.animation = "default"
