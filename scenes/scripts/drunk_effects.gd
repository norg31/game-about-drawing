extends AnimationPlayer

func _ready() -> void:
	var drunk_level : int = GameState.level_counter
	if drunk_level > 2 and drunk_level <= 4:
		play("drunkEffect1")
	elif drunk_level > 4 and drunk_level <= 6:
		play("drunkEffect2")
	elif drunk_level > 6 and drunk_level <= 10:
		play("drunkEffect3")
		
