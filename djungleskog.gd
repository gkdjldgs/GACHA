extends RichTextLabel


# Called when the node enters the scene tree for the first time.
var texts = 'DJUNGLESKOG '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.djungelskoG))
	self.text = TEXT
