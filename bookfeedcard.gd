extends VBoxContainer

var book_dict = {}
var book_title = ""
var current_page = 0
var total_pages = 0
var book_key = ""

var is_room = true

var y_position = 0



# Called when the node enters the scene tree for the first time.
func _ready():
	$"titleLbl".text = book_title
	update_vals()


func update_vals():
	var pg_turn_amount = Globals.user_settings["text_amount"]

	$"optionsCols/pageNumInp".placeholder_text = str(current_page) + "/" + str(total_pages)
	
	# The not is_room if statement is only for when text amount expected is greater than total pages
	if not is_room:
		$"outputLbl".text = book_dict[book_title][str(current_page)]
		return
		
	if Globals.user_settings["text_amount"] == 2:
		$"outputLbl".text = book_dict[book_title][str(current_page)] + book_dict[book_title][str(current_page + 1)]
	elif Globals.user_settings["text_amount"] == 3:
		$"outputLbl".text = book_dict[book_title][str(current_page)] + book_dict[book_title][str(current_page + 1)] + book_dict[book_title][str(current_page + 2)]
	else:
		$"outputLbl".text = book_dict[book_title][str(current_page)]
	Globals.all_books[book_key]["current_page"] = current_page
	Globals.save_state()


func _on_fwd_btn_pressed():
	var expected_page = current_page + Globals.user_settings["text_amount"]
	if expected_page > total_pages:
		is_room = false
		if current_page + 1 <= total_pages:
			current_page += 1
	else:
		current_page += Globals.user_settings["text_amount"]

	update_vals()


func _on_back_btn_pressed():
	if current_page > 1:
		current_page -= Globals.user_settings["text_amount"]
		update_vals()


func check_is_valid(txt):
	var valid = "1234567890"
	for x in txt:
		if x not in valid:
			return false
	if int(txt) <= total_pages and int(txt) > 0:
		return true
	return false


func _on_page_num_inp_text_submitted(new_text):
	if check_is_valid(new_text):
		current_page = int(new_text)
		if current_page + Globals.user_settings["text_amount"] > total_pages:
			is_room = false
		update_vals()
	$"optionsCols/pageNumInp".clear()
	



func _on_btm_fwd_btn_pressed():
	var scroll_container = self.get_parent().get_parent()
	var main_node = scroll_container.get_parent().get_parent().get_parent().get_parent()
	#scroll_container.scroll_vertical = y_position
	
	_on_fwd_btn_pressed()
	main_node.get_position_dict_for_scrollber()
	scroll_container.set_deferred("scroll_vertical", y_position)






func _on_btm_back_btn_pressed():
	var scroll_container = self.get_parent().get_parent()
	var main_node = scroll_container.get_parent().get_parent().get_parent().get_parent()
	#scroll_container.scroll_vertical = y_position
	
	_on_back_btn_pressed()
	main_node.get_position_dict_for_scrollber()
	scroll_container.set_deferred("scroll_vertical", y_position)

