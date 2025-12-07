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
#connect to the png variable
@onready var dronjon = $Dronjonssquare
@onready var mala = $Malasquare
@onready var symcka = $Symckasquare
@onready var vittle = $Vinterfintbottlesquare
@onready var vandle = $Vinterfintcandlesquare
@onready var gossigratta = $Gossigrattasquare 
@onready var bolbo = $Bolbosquare
@onready var djungleorm = $Djungleormsquare
@onready var kramig = $Kramigsquare
@onready var uppsta = $Uppstasquare
@onready var blahaj = $Blahajsquare
@onready var djungleskog = $Djungelskogsquare
func _ready() -> void:
	collection.display()
func display():
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
			bolbo.show()
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
	get_tree().change_scene_to_file('res://main.tscn')
