extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	self.add_theme_stylebox_override("normal", load(Globals.user_settings["colors"]["button"]))
	if Globals.user_settings["colors"]["button"] == "res://mainButtonDark.tres":
		self.add_theme_color_override("font_color", "silver")
