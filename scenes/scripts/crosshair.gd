extends Area2D

var wobble_strength = GameState.wobble_strength
var wobble_speed = GameState.wobble_speed

var time := 0.0

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _process(delta):
	set_crosshair_position(delta)


func set_crosshair_position(delta):
	time += delta * wobble_speed

	var mouse_pos = get_global_mouse_position()

	var wobble = Vector2(
		sin(time),
		cos(time * 1.3)
	) * wobble_strength

	global_position = mouse_pos + wobble


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("shoot"):
		for body in get_overlapping_areas():
			if body.has_method("shoot"):
				body.shoot()
			
