extends Control

var followed_count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"Panel".add_theme_stylebox_override("panel", load(Globals.user_settings["colors"]["panel"]))
	add_book_cards()
	update_label_val()

func add_book_cards():
	for x in Globals.all_books.keys():
		var book_card = load("res://follow-book-card.tscn")
		var instance = book_card.instantiate()
		instance.title = Globals.all_books[x]["title"]
		instance.author = Globals.all_books[x]["author"]
		instance.book_index = Globals.all_books[x]["book_index"]
		
		instance.current_page = Globals.all_books[x]["current_page"]
		
		instance.dict_key = x
		instance.is_followed = Globals.all_books[x]["currently_reading"]
		$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".add_child(instance)


func _on_home_btn_pressed():
	$"Panel/MarginContainer/BaseRows/Label".text = "Loading Feed..."
	$"Panel/MarginContainer/BaseRows/sceneSwitchTimer".start()
	


func _on_conf_btn_pressed():
	get_tree().change_scene_to_file("res://settings-page.tscn")
	

func go_to_scene():
	$"Panel/MarginContainer/BaseRows/Label".text = "Loading Feed..."


func _on_scene_switch_timer_timeout():
	get_tree().change_scene_to_file("res://main.tscn")


func update_label_val():
	followed_count = Globals.count_currently_reading()
	$"Panel/MarginContainer/BaseRows/Label".text = $"Panel/MarginContainer/BaseRows/Label".text + " " + str(followed_count) + "/5"



func _on_check_button_toggled(button_pressed):
	if button_pressed:
		for x in $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".get_children():
			if not x.is_followed:
				x.visible = false
	else:
		for x in $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".get_children():
			if not x.visible:
				x.visible = true


func _on_check_btn_lang_filter_toggled(button_pressed):
	if button_pressed:
		for x in $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".get_children():
			if not "language" in Globals.all_books[x.dict_key].keys():
				x.visible = false
	else:
		for x in $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows".get_children():
			if not x.visible:
				x.visible = true
