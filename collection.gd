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

func display():
	var item = autoload.items
	match item:
		'DRONJONS':
			dronjoN.show()
			dronjoN += 1
		'VINTERFINT (BOTTLE)':
			vittle.show()
			vinterfintbottlE += 1
		'VINTERFINT (CANDLE)':
			vandle.show()
			vinterfintcandlE += 1
		'SMYCKA':
			symcka.show()
			symckA += 1
		'MALA':
			mala.show()
			malA += 1
		'BOLBO':
			bolbo.show()
			bolbO += 1
		'DJUNGLEORM':
			djungleorm.show()
			djungleorM += 1
		'UPPSTA (Storage Bag)':
			uppsta.show()
			uppstA += 1
		'KRAMIG':
			kramig.show()
			kramiG += 1
		'GOSIG RATTA':
			gossigratta.show()
			gossigrattA += 1
		'BLAHAJ':
			blahaj.show()
			blahaJ += 1
		'DJUNGLESKOG':
			djungleskog.show()
			djungelskoG += 1
		null:
			pass
		_:
			pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
