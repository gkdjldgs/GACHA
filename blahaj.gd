extends RichTextLabel


# Called when the node enters the scene tree for the first time.
var texts = 'BLAHAJ '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.blahaJ))
	self.text = TEXT
