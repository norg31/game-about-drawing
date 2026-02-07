extends Area2D
@onready var enemy: Node2D = $".."
@onready var draw_bar: TextureProgressBar = $"../DrawBar"


func shoot():
	if draw_bar.can_be_killed:
		print("you won")
		enemy.queue_free()
