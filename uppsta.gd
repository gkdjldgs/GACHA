extends RichTextLabel



var texts = 'UPPSTA '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.uppstA))
	self.text = TEXT
