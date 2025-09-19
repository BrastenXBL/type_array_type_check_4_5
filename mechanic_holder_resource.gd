@tool
class_name MechanicHolder
extends Resource

@export var card_mechanics : Array[MechanicResource]:
	set = set_card_mechanics

func _function_never_runs() -> void:
	for mech in card_mechanics:
		if mech is MechanicSubRes1:
			print("Mechanic is a Sub Mechanic 1")

func set_card_mechanics(v) -> void:
	card_mechanics = v
	_function_never_runs()
