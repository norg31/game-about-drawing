extends TextureProgressBar
@onready var drunk_effects: AnimationPlayer = $"../../DrunkEffects"

@export var can_be_shot : bool = false

func _ready() -> void:
	DuelingJudge.is_dueling = true

func _process(_delta: float) -> void:
	value += step
	
	if value > 70 and value < 100:
		can_be_shot = true
		
	elif value == 100:
		can_be_shot = false
		DuelingJudge.duel_lost()
	else:
		can_be_shot = false
		
	
