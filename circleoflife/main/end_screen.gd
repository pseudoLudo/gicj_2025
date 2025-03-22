extends Node2D

const MAIN = preload("res://main/main.tscn")
const GAME = preload("res://game/game.tscn")
func _on_timer_timeout() -> void:
	get_tree().change_scene_to_packed(GAME)
