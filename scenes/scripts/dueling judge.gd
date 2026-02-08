extends Node

var has_been_wounded : bool = false
var is_dueling : bool = false
var is_wounded: bool = false
var is_shot : bool = false

func _input(event: InputEvent) -> void:
	if not is_dueling:
		return
	
	if event.is_action_pressed("shoot"):
		if is_shot:
			print("You killed the enemy")
			duel_won()
			
		elif is_wounded:
			if has_been_wounded:
				print("You killed the enemy")
				duel_won()
			else:
				print("You wounded the enemy")
				has_been_wounded = true
				is_wounded = false
				get_tree().reload_current_scene()
				
		else:
			print("You missed")
			duel_lost()



func duel_won() -> void:
	print("duel won")
	
	reset_duel_state()
	
	get_tree().change_scene_to_file("res://scenes/drink.tscn")

func duel_lost() -> void:
	print("duel lost")
	print("Level achieved: ", GameState.level_counter)
	
	reset_duel_state()
	
	GameState.wobble_strength = GameState.BASE_STRENGTH
	GameState.wobble_speed = GameState.BASE_SPEED
	GameState.level_counter = GameState.BASE_LEVEL
	
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	
func reset_duel_state() -> void:
	is_shot = false
	is_wounded = false
	is_dueling = false
	has_been_wounded = false
	
func missed_shot() -> void:
	if not is_dueling:
		return

	print("Ran out of time")
	duel_lost()
