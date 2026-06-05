extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tr("{character} picked up the {weapon}").format({character = "Ogre", weapon = "Sword"})
	var number = 3
	tr_n("{character} picked up a weapon", "{character} picked up {count} weapons", number).format({character = "Ogre", count = number}) # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
