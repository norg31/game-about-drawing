extends Area2D


func shoot() -> void:
	print("chose to play")
	get_tree().change_scene_to_file("res://scenes/drink.tscn")
