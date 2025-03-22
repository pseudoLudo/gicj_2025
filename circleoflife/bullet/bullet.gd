extends Area2D

var speed = 1000
var dir_angle = 0
var mouseDirection
var dir

func _ready() -> void:
	mouseDirection = position.angle_to_point(get_global_mouse_position()) + randf_range(-0.1,0.1)
	dir = Vector2.RIGHT.rotated(mouseDirection).normalized()
	
func _physics_process(delta: float) -> void:
	position += speed * dir * delta


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
