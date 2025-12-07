extends Node2D
var item = autoload.items
@onready var player = $Sprite2D/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func gamble():
	var item = autoload.items
	match item:
		'DRONJONS':
			player.play("dronjon")
		null:
			pass
		_:
			pass
