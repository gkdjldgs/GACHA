extends RichTextLabel


var texts = 'MALA '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.malA))
	self.text = TEXT
