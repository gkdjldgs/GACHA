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
@onready var leavebutton = $/root/Node2D/leavebutton
@onready var skipbutton = $/root/Node2D/skipbutton
var skip = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	blocker.hide()
	skipbutton.hide()

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
	skip = false
	if skip != true:
		skipbutton.show()
		get_tree().create_timer(0.15).timeout
		if skip == true:
			showstuffs()
			return
		rectangle.show()
		animation.play('fadein')
		await animation.animation_finished
		if skip == true:
			showstuffs()
			return
		lights.show()
		lightsleft.hide()
		lightsright.hide()
		lightsmiddle.hide()
		await get_tree().create_timer(0.65).timeout
		if skip == true:
			showstuffs()
			return
		lightsleft.show()
		if skip == true:
			showstuffs()
			return
		await get_tree().create_timer(0.75).timeout
		if skip == true:
			showstuffs()
			return
		lightsleft.hide()
		if skip == true:
			showstuffs()
			return
		await get_tree().create_timer(1).timeout
		if skip == true:
			showstuffs()
			return
		item.show()
		item.gamble()
		lightsleft.show()
		lightsright.show()
		if skip == true:
			showstuffs()
			return
		await get_tree().create_timer(0.85).timeout
		if skip == true:
			showstuffs()
			return
		blocker.show()
		lightsleft.hide()
		lightsright.hide()
		if skip == true:
			showstuffs()
			return
		await get_tree().create_timer(1.60).timeout
		if skip == true:
			showstuffs()
			return
		bluelabel.bluematchup()
		purplelabel.purplematchup()
		goldenlabel.orangematchup()
		blocker.hide()
		lightsleft.show()
		lightsright.show()
		lightsmiddle.show()
		leavebutton.show()
		if skip == true:
			showstuffs()
			return
	elif skip == true:
		showstuffs()
		return
func showstuffs():
	item.gamble()
	bluelabel.bluematchup()
	purplelabel.purplematchup()
	goldenlabel.orangematchup()
	blocker.hide()
	itemanime.play('mala')
	leavebutton.show()
	lightsleft.show()
	lightsright.show()
	lightsmiddle.show()
	rectangle.show()
	item.show()
	bluelabel.bluematchup()
	purplelabel.purplematchup()
	goldenlabel.orangematchup()
func _on_leavebutton_pressed() -> void:
	leavebutton.hide()
	lightsleft.hide()
	lightsright.hide()
	lightsmiddle.hide()
	rectangle.hide()
	item.hide()
	bluelabel.hide()
	purplelabel.hide()
	goldenlabel.hide()



func _on_skipbutton_pressed() -> void:
	skipbutton.hide()
	skip = true
