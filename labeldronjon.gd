extends RichTextLabel
var texts = 'DRONJON '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.dronjoN))
	self.text = TEXT
