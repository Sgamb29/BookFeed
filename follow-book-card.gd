extends VBoxContainer

var title = ""
var author = ""
var book_index = 0
var dict_key = ""
var is_followed = false

var current_page = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	var counts_str = "\nProgress:\nPg: " + str(current_page)
	$"optionsCols/titleLbl".text = title + "\n" + author
	if is_followed:
		$"optionsCols/followBtn".text = "Unfollow" + counts_str
	else:
		$"optionsCols/followBtn".text = "Follow" + counts_str
	

func _on_follow_btn_pressed():
	var counts_str = "\nProgress:\nPg: " + str(current_page)
	if not is_followed:
		var followed_count = Globals.count_currently_reading()
		if followed_count >= 5:
			return
		Globals.all_books[dict_key]["currently_reading"] = true
		is_followed = true
		$"optionsCols/followBtn".text = "Unfollow" + counts_str
		get_label_and_update()
		Globals.save_state()
	else:
		Globals.all_books[dict_key]["currently_reading"] = false
		is_followed = false
		$"optionsCols/followBtn".text = "Follow" + counts_str
		Globals.all_books[dict_key]["book"] = {}
		get_label_and_update()
		Globals.save_state()


func get_label_and_update():
	var lbl = self.get_node("../../../Label")
	var followed_count = Globals.count_currently_reading()
	lbl.text = "Books To Follow " + str(followed_count) + "/5"


		

