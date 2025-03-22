extends Area2D

var target 
var target_dir

func _ready() -> void:
	target = get_parent().get_node("pivot/player")
	print(target)
	
func _physics_process(delta: float) -> void:
	if position != target.position:
		position += target.position - position * delta
