extends Area2D



func shoot():
	print("Drunk")
	
	# Change crosshair wobble 
	GameState.wobble_strength += 0.5
	GameState.wobble_speed += 0.2
	print(GameState.wobble_strength, " ", GameState.wobble_speed)
	
	# Add 1 to level counter
	GameState.level_counter += 1
	print("level: ", GameState.level_counter)

	
	##  Play drinking animation
	# ...
	
	
	#  Switch scene to fight scene
	get_tree().change_scene_to_file("res://scenes/fight.tscn")
