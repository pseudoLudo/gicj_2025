extends Area2D

const BULLET = preload("res://bullet/bullet.tscn")

func _process(delta: float) -> void:
	$Sprite2D.rotation -= 1 * delta
	
