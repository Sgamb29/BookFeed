extends Control

var text_output = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	$"Panel".add_theme_stylebox_override("panel", load(Globals.user_settings["colors"]["panel"]))
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontEdit".placeholder_text = str($"Panel/MarginContainer/BaseRows/Label".get_theme_font_size("font_size"))
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontEdit".add_theme_font_size_override("font_size", $"Panel/MarginContainer/BaseRows/Label".get_theme_font_size("font_size"))

	var current_text_amount = ""
	if Globals.user_settings["text_amount"] == 1:
		current_text_amount = " Default"
	elif Globals.user_settings["text_amount"] == 2:
		current_text_amount = " Double"
	elif Globals.user_settings["text_amount"] == 3:
		current_text_amount = " Triple"
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols2/txtAmountLabel".text = "Text Amount:" + current_text_amount

func _on_home_btn_pressed():
	$"Panel/MarginContainer/BaseRows/Label".text = "Loading Feed..."
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/sceneSwitchTimer".start()


func _on_font_options_btn_item_selected(index):
	var optBtn = $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontOptionsBtn"
	var size = optBtn.get_item_text(index)
	Globals.user_settings["font_size"] = int(size)
	
	save_and_refresh()
	# NOTE Go through labels group and change there size here so the user can see the effect


func _on_txt_amount_options_btn_item_selected(index):
	var optBtn = $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols2/txtAmountOptionsBtn"
	var choice = optBtn.get_item_text(index)
	if choice == "Double":
		Globals.user_settings["text_amount"] = 2
	elif choice == "Triple":
		Globals.user_settings["text_amount"] = 3
	elif choice == "Default":
		Globals.user_settings["text_amount"] = 1
		
	save_and_refresh()


func _on_txt_align_options_btn_item_selected(index):
	var optBtn = $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols3/txtAlignOptionsBtn"
	var choice = optBtn.get_item_text(index)
	if choice == "Left":
		Globals.user_settings["text_align"] = 0
	elif choice == "Center":
		Globals.user_settings["text_align"] = 1
		
	save_and_refresh()


func _on_color_them_opts_btn_item_selected(index):
	var optBtn = $"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols4/colorThemOptsBtn"
	var choice = optBtn.get_item_text(index)
	if choice == "Default":
		Globals.user_settings["colors"]["button"] = "res://mainButtonDefaultColor.tres"
		Globals.user_settings["colors"]["label"] = "res://mainLabelDefaultColor.tres"
		Globals.user_settings["colors"]["panel"] = "res://mainPanelDefaultColor.tres"
	elif choice == "Dark":
		Globals.user_settings["colors"]["button"] = "res://mainButtonDarkLight.tres"
		Globals.user_settings["colors"]["label"] = "res://mainButtonDark.tres"
		Globals.user_settings["colors"]["panel"] = "res://mainButtonDark.tres"
		
	save_and_refresh()

func save_and_refresh():
	Globals.save_user_settings()
	get_tree().change_scene_to_file("res://settings-page.tscn")
		


func _on_scene_switch_timer_timeout():
	get_tree().change_scene_to_file("res://main.tscn")


func _on_bookmark_export_btn_pressed():
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/copyBtn".visible = true
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/bookmarkOutputEdit".visible = true
	text_output = ""
	for x in Globals.all_books.keys():
		if Globals.all_books[x]["current_page"] > 1:
			text_output = text_output + Globals.all_books[x]["title"] + " : " + str(Globals.all_books[x]["current_page"]) + "\n"
			
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/bookmarkOutputEdit".text = text_output
	


func _on_copy_btn_pressed():
	DisplayServer.clipboard_set(text_output)
	$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/copyBtn".text = "Copied!"


func _on_font_edit_text_submitted(new_text):
	var valid = "0123456789"
	for x in new_text:
		if x not in valid:
			$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontLabel".text = "Between 25-60"
			$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontEdit".clear()
			return
	if int(new_text) >= 25 and int(new_text) <= 60:
		Globals.user_settings["font_size"] = int(new_text)
	else:
		$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontLabel".text = "Between 25-60"
		$"Panel/MarginContainer/BaseRows/ScrollContainer/MainRows/settingCols/fontEdit".clear()
		return
	
	save_and_refresh()
		


func _on_default_btn_pressed():
	Globals.user_settings["text_amount"] = 1
	save_and_refresh()


func _on_double_btn_pressed():
	Globals.user_settings["text_amount"] = 2
	save_and_refresh()


func _on_triple_btn_pressed():
	Globals.user_settings["text_amount"] = 3
	save_and_refresh()


func _on_left_align_btn_pressed():
	Globals.user_settings["text_align"] = 0
	save_and_refresh()


func _on_center_align_btn_pressed():
	Globals.user_settings["text_align"] = 1
	save_and_refresh()


func _on_default_theme_btn_pressed():
	Globals.user_settings["colors"]["button"] = "res://mainButtonDefaultColor.tres"
	Globals.user_settings["colors"]["label"] = "res://mainLabelDefaultColor.tres"
	Globals.user_settings["colors"]["panel"] = "res://mainPanelDefaultColor.tres"
	save_and_refresh()


func _on_dark_theme_btn_pressed():
	Globals.user_settings["colors"]["button"] = "res://mainButtonDarkLight.tres"
	Globals.user_settings["colors"]["label"] = "res://mainButtonDark.tres"
	Globals.user_settings["colors"]["panel"] = "res://mainButtonDark.tres"
	save_and_refresh()
