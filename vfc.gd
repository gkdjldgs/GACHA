extends RichTextLabel


var texts = 'VINTERFINT
  CANDLE '

func _process(delta: float) -> void:
	var TEXT = str(texts, str(collection.vinterfintcandlE))
	self.text = TEXT
