extends Node2D
var item = autoload.items
@onready var player = $Sprite2D/AnimationPlayer
@onready var Sprite2d = $Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func gamble():
	var item = autoload.items
	player.play("dronjon")
	match item:
		'DRONJONS':
			Sprite2d.play("dronjon")
		'VINTERFINT (BOTTLE)':
			Sprite2d.play("vinterfintbottle")
		'VINTERFINT (CANDLE)':
			Sprite2d.play('vinterfintcandle')
		'SMYCKA':
			Sprite2d.play('smycka')
		'MALA':
			Sprite2d.play("mala")
		'BOLBO':
			Sprite2d.play("bolbo")
		'DJUNGLEORM':
			Sprite2d.play("djungleorm")
		'UPPSTA (Storage Bag)':
			Sprite2d.play('uppsta')
		'KRAMIG':
			Sprite2d.play("kramig")
		'GOSIG RATTA':
			Sprite2d.play('gossigratta')
		'BLAHAJ':
			Sprite2d.play("blahaj")
		'DJUNGLESKOG':
			Sprite2d.play('djungelskog')
		null:
			pass
		_:
			pass
