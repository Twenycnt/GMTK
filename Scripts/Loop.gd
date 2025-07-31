extends Node2D

@onready var loopText = get_tree().root.find_child("LoopText", true, false)
@onready var loopTimer = get_tree().root.find_child("LoopTimer", true, false)


func _on_loop_timer_timeout():
	loopText.set_visible(true)
	await get_tree().create_timer(1.0).timeout
	get_tree().reload_current_scene()
