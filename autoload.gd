extends Node

#variables for the game
var pity = 0
var star5pity := 0
var star4pity := 0

#func that aims to return a random number based on rolls
func gamba(result):
#pity is how many total pulls you've done, while roll is the number that determines your result
	pity += 1
	star4pity += 1
	var roll = randi_range(1,70)
	var divisor = roll % 10
	if roll == 66:
		result = str('5star')
		print('g')
	elif star4pity == 10:
		result = str('4star')
		star4pity = 0
		print('p')
	elif divisor == 0:
		result = str('4star')
		pity += 1
		print('p')
	elif pity >= 55:
		var luck = pity - 55
		var star5pity = randi_range(luck,15)
		if star5pity == 15:
			pity = 0
			result = str('5star')
			print('g')
		else:
			pity += 1
			result = str('3star')
			print('b')
	else:	
		print('b')
		result = str('3star')
	print(pity)
	return result
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
