extends RichTextLabel


var texts = 'GOSSIG 
RATTA '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.gossigrattA))
	self.text = TEXT
