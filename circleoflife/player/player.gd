extends Area2D

func _process(delta: float) -> void:
	$Sprite2D.rotation -= 1 * delta
