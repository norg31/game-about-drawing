extends Area2D
@onready var draw_bar: TextureProgressBar = $"../DrawBar"

func shoot() -> void:
	if draw_bar.can_be_shot:
		if not DuelingJudge.is_wounded:
			DuelingJudge.is_wounded = true
			
		elif DuelingJudge.is_wounded:
			print("is wounded, killing enemy")
			DuelingJudge.is_shot = true
	else:
		DuelingJudge.duel_lost()
		print("You shot too early")
