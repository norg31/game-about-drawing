extends TextureProgressBar
@onready var draw_bar: TextureProgressBar = $"."

@export var can_be_killed = false

func _process(delta: float) -> void:
	draw_bar.value += step
	if draw_bar.value >= 70:
		can_be_killed = true
	else:
		can_be_killed = false
		
