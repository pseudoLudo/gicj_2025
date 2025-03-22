extends Area2D

var speed = 200
var flip = false
var health = 3
const EXPLOSION = preload("res://enemies/explosion.tscn")
signal changeScorelabel

func _physics_process(delta: float) -> void:
	position.x += speed * delta
	$Sprite2D.flip_h = flip


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("bullet"):
		health -= 1
		$hit.play()
		area.queue_free()
		if health <= 0 :
			$Sprite2D.visible = false
			$explosion.emitting = true
			$death.play()
			ScoreHolder.score += 10
			changeScorelabel.emit()
			
	if area.is_in_group("player"):
		health -= 1
		ScoreHolder.score -= 60
		changeScorelabel.emit()
		
		$hit.play()
		if health <= 0 :
			$Sprite2D.visible = false
			$explosion.emitting = true
			$death.play()
		area._on_game_playerhit()
	print(ScoreHolder.score)


func _on_explosion_finished() -> void:
	queue_free()
