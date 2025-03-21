extends Area2D

var speed = 200
var flip = false

func _physics_process(delta: float) -> void:
	position.x += speed * delta
	$Sprite2D.flip_h = flip


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
