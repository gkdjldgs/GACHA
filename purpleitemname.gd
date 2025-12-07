extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func purplematchup():
	var item = autoload.items
	match item:
			'BOLBO':
				self.text = str('BOLBO')
				self.show()
			'DJUNGLEORM':
				self.text = str('DJUNGLEORM')
				self.show()
			'UPPSTA (Storage Bag)':
				self.text = str('UPPSTA (STORAGE BAG)')
				self.show()
			'KRAMIG':
				self.text = str('KRAMIG')
				self.show()
			'GOSIG RATTA':
				self.text = str('GOSIG RATTA')
				self.show()
			null:
				pass
			_:
				pass
