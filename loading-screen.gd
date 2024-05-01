extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$"Panel".add_theme_stylebox_override("panel", load(Globals.user_settings["colors"]["panel"]))
	var page_str = "Total Pages Read For Current Books: "
	var book_str = "\nNumber of Books Currently Reading: "
	#$"Panel/MarginContainer/BaseRows/pagesLbl".text = page_str + str(stats[0]) + book_str + str(stats[1])
	$"loadingTimer".start()
	
	print("Loading screen timer started")
	



func _on_loading_timer_timeout():
	get_tree().change_scene_to_file("res://main.tscn")
