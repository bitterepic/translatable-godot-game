extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var number = 3
	var character = "Jim"
	tr("{character} picked up the {weapon}").format({character = character, weapon = "Sword"})
	tr_n("{character} picked up a weapon", "{character} picked up {count} weapons", number).format({character = character, count = number}) # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
