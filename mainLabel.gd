extends Label



func _ready():
	self.add_theme_font_size_override("font_size", Globals.user_settings["font_size"])
	self.horizontal_alignment = Globals.user_settings["text_align"]
	self.add_theme_stylebox_override("normal", load(Globals.user_settings["colors"]["label"]))
	if Globals.user_settings["colors"]["label"] == "res://mainButtonDark.tres":
		self.add_theme_color_override("font_color", "silver")

# Changed horizontal align to the left
