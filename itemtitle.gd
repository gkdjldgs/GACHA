extends RichTextLabel

func bluematchup():
	var item = autoload.items
	match item:
			'DRONJONS':
				self.text = 'DRONJONS'
				self.show()
			'VINTERFINT (BOTTLE)':
				self.text = 'VINTERFINT (BOTTLE)'
				self.show()
			'VINTERFINT (CANDLE)':
				self.text = str('VINTERFINT (CANDLE)')
				self.show()
			'SMYCKA':
				self.text = str('SMYCKA')
				self.show()
			'MALA':
				self.text = str('MALA')
				self.show()
			null:
				pass
			_:
				pass
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
