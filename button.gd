extends TextureButton
@onready var rectangle = $/root/Node2D/ColorRect2
@onready var animation = $/root/Node2D/ColorRect2/AnimationPlayer
@onready var lights = $/root/Node2D/lights
@onready var lightsleft = $/root/Node2D/lights/Spotlightleft
@onready var lightsright = $/root/Node2D/lights/Spotlightright
@onready var lightsmiddle = $/root/Node2D/lights/Spotlightmiddle
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if autoload.cash >= 100:
		autoload.cash -= 100
		spotlights()
		
		
		var test = ''
		var text = autoload.gamba(test)
	else:
		pass
func items():
	pass
func spotlights():
	await get_tree().create_timer(0.15).timeout
	rectangle.show()
	animation.play('fadein')
	await animation.animation_finished
	lights.show()
	lightsleft.hide()
	lightsright.hide()
	lightsmiddle.hide()
	await get_tree().create_timer(0.65).timeout
	lightsleft.show()
	await get_tree().create_timer(0.9).timeout
	lightsleft.hide()
	await get_tree().create_timer(0.6).timeout
	lightsleft.show()
	lightsright.show()
	await get_tree().create_timer(0.85).timeout
	lightsleft.hide()
	lightsright.hide()
	await get_tree().create_timer(1.75).timeout
	lightsleft.show()
	lightsright.show()
	lightsmiddle.show()
