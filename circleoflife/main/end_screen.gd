extends Node2D

const MAIN = preload("res://main/main.tscn")
const GAME = preload("res://game/game.tscn")

func _ready() -> void:
	$score.text = "Final Score: " + str(ScoreHolder.score)

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_packed(GAME)
