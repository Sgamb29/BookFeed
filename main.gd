extends Control

var layout_for_scrolling = {}
# Called when the node enters the scene tree for the first time.
func _ready():
	$"Panel".add_theme_stylebox_override("panel", load(Globals.user_settings["colors"]["panel"]))
	

	
	Globals.load_books()
	for x in Globals.all_books.keys():
		if not Globals.all_books[x]["currently_reading"]:
			continue
		var book_card = load("res://bookfeedcard.tscn")
		var instance = book_card.instantiate()
		
		instance.book_dict = Globals.all_books[x]["book"]
		instance.book_title = Globals.all_books[x]["json_key"]
		instance.current_page = Globals.all_books[x]["current_page"]
		instance.book_key = x
		instance.total_pages = len(instance.book_dict[instance.book_title].keys())
		
		$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".add_child(instance)
		
	get_position_dict_for_scrollber()
		
	

	

func get_position_dict_for_scrollber():
	var sum_of_sizes = 0
	for x in $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".get_children():
		layout_for_scrolling[x.book_title] = sum_of_sizes
		x.y_position = sum_of_sizes
		sum_of_sizes += x.get_size().y
		

		


func _on_follow_page_btn_pressed():
	get_tree().change_scene_to_file("res://follow-page.tscn")
