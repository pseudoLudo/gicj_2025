extends Marker2D

@export var rotation_speed = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	rotation += 1 * delta 
