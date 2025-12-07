extends TextureButton
@onready var rectangle = $/root/Node2D/ColorRect2
@onready var animation = $/root/Node2D/ColorRect2/AnimationPlayer
@onready var lights = $/root/Node2D/lights
@onready var lightsleft = $/root/Node2D/lights/Spotlightleft
@onready var lightsright = $/root/Node2D/lights/Spotlightright
@onready var lightsmiddle = $/root/Node2D/lights/Spotlightmiddle
@onready var item = $/root/Node2D/Gachaitem
@onready var itemanime = $/root/Node2D/Gachaitem/Sprite2D/AnimationPlayer
@onready var blocker = $/root/Node2D/Blocker
@onready var bluelabel = $/root/Node2D/Blueitemname
@onready var purplelabel = $/root/Node2D/Purpleitemname
@onready var goldenlabel = $/root/Node2D/Goldenitemname
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	blocker.hide()


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
	await get_tree().create_timer(0.75).timeout
	lightsleft.hide()
	await get_tree().create_timer(1).timeout
	item.show()
	item.gamble()
	lightsleft.show()
	lightsright.show()
	await get_tree().create_timer(0.85).timeout
	blocker.show()
	lightsleft.hide()
	lightsright.hide()
	await get_tree().create_timer(1.60).timeout
	bluelabel.bluematchup()
	purplelabel.purplematchup()
	goldenlabel.orangematchup()
	blocker.hide()
	lightsleft.show()
	lightsright.show()
	lightsmiddle.show()
	
func projectanimation():
	pass
