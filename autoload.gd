extends Node

#variables for the game
var pity = 0
var star5pity := 0
var star4pity := 0
var randomizes = 0
var fiftes = false
#func that aims to return a random number based on rolls
func gamba(result):
#pity is how many total pulls you've done, while roll is the number that determines your result
	pity += 1
	star4pity += 1
	var roll = randi_range(1,70)
	var divisor = roll % 10
	if roll == 66:
		result = star5()
		print('g')
	elif star4pity == 10:
		result = star4()
		star4pity = 0
		print('p')
	elif divisor == 0:
		result = star4()
		pity += 1
		print('p')
	elif pity >= 55:
		var luck = pity - 55
		var star5pity = randi_range(luck,15)
		if star5pity == 15:
			pity = 0
			result = star5()
			print('g')
		else:
			pity += 1
			result = star3()
			print('b')
	else:	
		print('b')
		result = star3()
	print(result)
	return result
	
#randomize the actual value of 3stars - 5stars

func star3():
	randomizes = randi_range(1,4)
	if randomizes == 1:
		return str('VINTERFINT (Bottle)')
	elif randomizes == 2:
		return str('DRÖNJÖNS')
	elif randomizes == 3:
		return str('VINTERFINT (Candle)')
	elif randomizes == 4:
		return str('SMYCKA')
func star4():
	randomizes = randi_range(1,3)
	if randomizes == 1:
		return str('UPPSTA')
	elif randomizes == 2:
		return str('BILLY')
	elif randomizes == 3:
		return str('VAPPEBY')
		
func star5():
	if fiftes == true:
		fiftes = false
		return str('Blahaj')
	elif fiftes == false:
		randomizes = randi_range(1,2)
		if randomizes == 1:
			return str('Blahaj')
		elif randomizes == 2:
			fiftes = true
			return str('DJUNGLESKOG (Bear)')
			
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
