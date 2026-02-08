extends TextureProgressBar
@onready var drunk_effects: AnimationPlayer = $"../../DrunkEffects"

@export var can_be_shot : bool = false

func _ready() -> void:
	DuelingJudge.is_dueling = true

func _process(_delta: float) -> void:
	if DuelingJudge.has_been_wounded:
		step = 1
	else:
		step = 0.5
	value += step
	
	if value < 70:
		can_be_shot = false
	
	elif value >= 70 and value < 100:
		can_be_shot = true

	elif value >= 100:
		can_be_shot = false
		DuelingJudge.missed_shot()
	else:
		can_be_shot = false
		
	
