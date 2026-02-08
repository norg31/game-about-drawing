extends Area2D
@onready var draw_bar: TextureProgressBar = $"../DrawBar"

func shoot() -> void:
	if draw_bar.can_be_shot:
		print("you killed the enemy")
		DuelingJudge.is_shot = true
	else:
		print("You shot too early")
