extends RichTextLabel


var texts = 'SYMCKA '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.symckA))
	self.text = TEXT
