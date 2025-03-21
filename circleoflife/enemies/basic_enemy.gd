extends Area2D

var speed = 200
var flip = false
var health = 3

func _physics_process(delta: float) -> void:
	position.x += speed * delta
	$Sprite2D.flip_h = flip


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullet"):
		health -= 1
		area.queue_free()
		if health <= 0 :
			queue_free()
