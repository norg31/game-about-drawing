extends RichTextLabel


func _process(delta: float) -> void:
	text = str(GameState.level_counter)
