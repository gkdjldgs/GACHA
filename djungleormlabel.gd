extends RichTextLabel

var texts = 'DJUNGLEORM '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.djungleorM))
	self.text = TEXT
