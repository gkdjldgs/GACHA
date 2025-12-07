extends RichTextLabel


var texts = 'VINTERFINT
  BOTTLE '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.vinterfintbottlE))
	self.text = TEXT
