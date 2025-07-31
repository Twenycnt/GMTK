extends Node2D

@onready var camera1 = get_tree().root.find_child("Camera1", true, false)

func _ready():
	camera1.make_current()
