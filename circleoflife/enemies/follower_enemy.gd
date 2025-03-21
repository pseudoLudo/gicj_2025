extends Area2D

var target 
var target_pos 

func _ready() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	target_pos = (target.position - position)
	
	if position.distance_to(target_pos) > 3:
		position += 100 * target_pos * delta
