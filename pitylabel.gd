extends RichTextLabel

var texts = str('PITY: ')
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var TEXT = str(texts, str(autoload.pity))
	self.text = TEXT
