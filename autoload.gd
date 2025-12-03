extends Node

#variables for the game
var pity = 0
var star5pity := 0
var star4pity := 0

func gamba(result):
	pity += 1
	var roll = randi_range(1,70)
	var divisor = roll % 10
	if roll == 66:
		result = str('5star')
		star4pity += 1
	elif star4pity == 10:
		result = str('4star')
		star4pity = 0
	elif divisor == 0:
		result = str('4star')
		pity += 1
	elif pity >= 55:
		var luck = 55 - 55
		
	else:
		result = str('3star')
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
