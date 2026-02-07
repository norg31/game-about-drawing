extends Area2D
@onready var draw_bar: TextureProgressBar = $"../DrawBar"

func shoot():
	if draw_bar.can_be_killed:
		print("you won")
		DuelingJudge.is_shot = true
	else:
		print("You shot too early")
