extends RichTextLabel


# Called when the node enters the scene tree for the first time.

var texts = 'BOLBO '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.bolbO))
	self.text = TEXT
