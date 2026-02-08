extends Area2D
@onready var draw_bar: TextureProgressBar = $"../DrawBar"

func shoot() -> void:
	if draw_bar.can_be_shot:
		DuelingJudge.is_shot = true
	else:
		print("You shot too early")
