extends Area2D


var time : float = 0.0

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(delta:float) -> void:
	set_crosshair_position(delta)


func set_crosshair_position(delta:float) -> void:
	time += delta * GameState.wobble_speed

	var mouse_pos : Vector2 = get_global_mouse_position()

	var wobble : Vector2 = Vector2(
		sin(time),
		cos(time * 1.3)
	) * GameState.wobble_strength

	global_position = mouse_pos + wobble


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("shoot"):
		for body : Node2D in get_overlapping_areas():
			if body.has_method("shoot"):
				body.shoot()
			
