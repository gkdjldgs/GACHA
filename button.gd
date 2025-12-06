extends TextureButton
@onready var rectangle = $/root/Node2D/ColorRect2
@onready var animation = $/root/Node2D/ColorRect2/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if autoload.cash >= 100:
		autoload.cash -= 100
		await get_tree().create_timer(0.15).timeout
		rectangle.show()
		animation.play('fadein')
		var test = ''
		var text = autoload.gamba(test)
	else:
		pass
