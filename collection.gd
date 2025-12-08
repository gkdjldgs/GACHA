extends Node2D
#keep track of the number variable
var dronjoN = int(0)
var malA = int(0)
var symckA = int(0)
var vinterfintbottlE = int(0)
var vinterfintcandlE = int(0)
var bolbO = int(0)
var djungleorM = int(0)
var gossigrattA = int(0)
var kramiG = int(0)
var uppstA = int(0)
var blahaJ = int(0)
var djungelskoG = int(0)

func _ready() -> void:
	collection.display()
func display():
	#This was a way for me to easily increase the amount of the stuff the player had for each item
	#by just bruteforcing it with match(which i did for alot of the code)	
	var item = autoload.items
	match item:
		'DRONJONS':
			dronjoN += 1
		'VINTERFINT (BOTTLE)':
			vinterfintbottlE += 1
		'VINTERFINT (CANDLE)':
			vinterfintcandlE += 1
		'SMYCKA':
			symckA += 1
		'MALA':
			malA += 1
		'BOLBO':
			bolbO += 1
		'DJUNGLEORM':
			djungleorM += 1
		'UPPSTA (Storage Bag)':
			uppstA += 1
		'KRAMIG':
			kramiG += 1
		'GOSIG RATTA':
			gossigrattA += 1
		'BLAHAJ':
			blahaJ += 1
		'DJUNGLESKOG':
			djungelskoG += 1
		null:
			pass
		_:
			pass
# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	#change the scene to actual gambling place so you can get more hours!
	
	get_tree().change_scene_to_file('res://main.tscn')
