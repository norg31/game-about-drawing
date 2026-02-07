extends Node


var is_dueling = false
var is_shot = false

func _input(event: InputEvent) -> void:
	if not is_dueling:
		return
	else:
		if event.is_action_pressed("shoot") and is_shot:
			print("You hit")
			duel_won()
		elif event.is_action_pressed("shoot") and !is_shot:
			print("You missed")
			duel_lost()
			

func duel_won():
	print("duel won")
	is_shot = false
	is_dueling = false
	get_tree().change_scene_to_file("res://scenes/drink.tscn")

func duel_lost():
	print("duel lost")
	print("Level achieved: ", GameState.level_counter)
	is_shot = false
	is_dueling = false
	
	GameState.wobble_strength = GameState.BASE_STRENGTH
	GameState.wobble_speed = GameState.BASE_SPEED
	GameState.level_counter = GameState.BASE_LEVEL
	
	get_tree().change_scene_to_file("res://scenes/main.tscn")
