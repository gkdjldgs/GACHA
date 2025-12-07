extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func orangematchup():
	var item = autoload.items
	match item:
			'BLAHAJ':
				self.text = str('BLAHAJ')
				self.show()
			'DJUNGLESKOG':
				self.text = str('DJUNGLESKOG')
				self.show()
			null:
				pass
			_:
				pass
