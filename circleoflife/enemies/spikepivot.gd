extends Marker2D

@onready var spikehit: AudioStreamPlayer2D = $spikehit
@export var rotation_speed = 2



func _ready() -> void:
	rotation = 1

func _physics_process(delta: float) -> void:
	rotation += rotation_speed * delta 


func _on_spike_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullet"):
		rotation += 0.1
		spikehit.play()
		area.queue_free()
		rotation_speed *= -1

			
