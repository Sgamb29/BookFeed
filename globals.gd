extends Node

# Make sure to double check author, title and what the first key is for the json file
# Copy and paste all one of the books keys and update the values for adding new books to app
@onready var all_books = { "grimms": {"file_path": "res://books/GRIMMS.json",
							"json_key": "THE BROTHERS GRIMM FAIRY TALES",
							"title": "THE BROTHERS GRIMM FAIRY TALES",
							"author": "By Jacob Grimm and Wilhelm Grimm",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 1,
							"book": {}},
				"sherlock": {"file_path": "res://books/SHERLOCK.json",
							"json_key": "THE ADVENTURES OF SHERLOCK HOLMES",
							"title": "THE ADVENTURES OF SHERLOCK HOLMES",
							"author": "By Arthur Conan Doyle",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 2,
							"book": {}},
				"dracula": {"file_path": "res://books/DRACULA.json",
							"json_key": "DRACULA",
							"title": "DRACULA",
							"author": "By Bram Stoker",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 3,
							"book": {}},
				"jekyll-and-hyde": {"file_path": "res://books/JEKYLL-AND-HYDE.json",
							"json_key": "JEKYLL AND HYDE",
							"title": "THE STRANGE CASE OF DR. JEKYLL AND MR. HYDE",
							"author": "By Robert Louis Stevenson",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 4,
							"book": {}},
				"pride-and-prejudice": {"file_path": "res://books/PRIDE-AND-PREJUDICE.json",
							"json_key": "PRIDE AND PREJUDICE",
							"title": "PRIDE AND PREJUDICE",
							"author": "By Jane Austen",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 5,
							"book": {}},
				"little-women": {"file_path": "res://books/LITTLE-WOMEN.json",
							"json_key": "LITTLE WOMEN",
							"title": "LITTLE WOMEN",
							"author": "By Louisa M. Alcott",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 6,
							"book": {}},
				"romeo-and-juliet": {"file_path": "res://books/ROMEO-AND-JULIET.json",
							"json_key": "ROMEO AND JULIET",
							"title": "ROMEO AND JULIET",
							"author": "By William Shakespeare",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 7,
							"book": {}},
				"study-in-scarlet": {"file_path": "res://books/A-STUDY-IN-SCARLET.json",
							"json_key": "A STUDY IN SCARLET",
							"title": "A STUDY IN SCARLET",
							"author": "By Arthur Conan Doyle",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 8,
							"book": {}},
				"alice-in-wonderland": {"file_path": "res://books/Alice’s-Adventures-in-Wonderland.json",
							"json_key": "Alice\u2019s Adventures in Wonderland",
							"title": "ALICE'S ADVENTURES IN WONDERLAND",
							"author": "By Lewis Carroll",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 9,
							"book": {}},
				"frankenstein": {"file_path": "res://books/Frankenstein.json",
							"json_key": "Frankenstein",
							"title": "FRANKENSTEIN",
							"author": "By Mary Wollstonecraft Shelley",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 10,
							"book": {}},
				"importance-of-earnest": {"file_path": "res://books/The-Importance-of-Being-Earnest.json",
							"json_key": "The Importance of Being Earnest",
							"title": "THE IMPORTANCE OF BEING EARNEST",
							"author": "By Oscar Wilde",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 11,
							"book": {}},
				"divine-comedy": {"file_path": "res://books/THE-DIVINE-COMEDY.json",
							"json_key": "THE DIVINE COMEDY",
							"title": "THE DIVINE COMEDY",
							"author": "By Dante Alighieri",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 12,
							"book": {}},
				"journey-to-interior": {"file_path": "res://books/A-Journey-into-the-Interior-of-the-Earth.json",
							"json_key": "A Journey into the Interior of the Earth",
							"title": "A Journey into the Interior of the Earth",
							"author": "By Jules Verne",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 13,
							"book": {}},
				"around-the-world": {"file_path": "res://books/Around-the-World-in-Eighty-Days.json",
							"json_key": "Around the World in Eighty Days",
							"title": "Around the World in Eighty Days",
							"author": "By Jules Verne",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 14,
							"book": {}},
				"twenty-thousand-leagues": {"file_path": "res://books/Twenty-Thousand-Leagues-under-the-Sea.json",
							"json_key": "Twenty Thousand Leagues under the Sea",
							"title": "Twenty Thousand Leagues under the Sea",
							"author": "By Jules Verne",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 15,
							"book": {}},
				"the-mysterious-affair": {"file_path": "res://books/The-Mysterious-Affair-at-Styles.json",
							"json_key": "The Mysterious Affair at Styles",
							"title": "The Mysterious Affair at Styles",
							"author": "By Agatha Christie",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 16,
							"book": {}},
				"muder-on-the-links": {"file_path": "res://books/The-Murder-on-the-Links.json",
							"json_key": "The Murder on the Links",
							"title": "The Murder on the Links",
							"author": "By Agatha Christie",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 17,
							"book": {}},
				"king-james-bible": {"file_path": "res://books/King-James-Version-of-the-Bible.json",
							"json_key": "King James Version of the Bible",
							"title": "King James Version of the Bible",
							"author": "SCRIPTURE",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 18,
							"book": {}},
				"moby-dick": {"file_path": "res://books/MOBY-DICK.json",
							"json_key": "MOBY-DICK",
							"title": "MOBY-DICK",
							"author": "By Herman Melville",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 19,
							"book": {}},
				"dhammapada": {"file_path": "res://books/THE-DHAMMAPADA.json",
							"json_key": "THE DHAMMAPADA",
							"title": "THE DHAMMAPADA",
							"author": "SCRIPTURE",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 20,
							"book": {}},
				"time-machine": {"file_path": "res://books/The-Time-Machine.json",
							"json_key": "The Time Machine",
							"title": "The Time Machine",
							"author": "By H. G. Wells",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 21,
							"book": {}},
				"war-of-worlds": {"file_path": "res://books/The-War-of-the-Worlds.json",
							"json_key": "The War of the Worlds",
							"title": "The War of the Worlds",
							"author": "By H. G. Wells",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 22,
							"book": {}},
				"wizard-of-oz": {"file_path": "res://books/The-Wonderful-Wizard-of-Oz.json",
							"json_key": "The Wonderful Wizard of Oz",
							"title": "The Wonderful Wizard of Oz",
							"author": "By Frank Baum",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 23,
							"book": {}},
				"adventures-huckleberry-fin": {"file_path": "res://books/ADVENTURES-OF-HUCKLEBERRY-FINN.json",
							"json_key": "ADVENTURES OF HUCKLEBERRY FINN",
							"title": "ADVENTURES OF HUCKLEBERRY FINN",
							"author": "By Mark Twain",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 24,
							"book": {}},
				"tale-of-two-cities": {"file_path": "res://books/A-TALE-OF-TWO-CITIES.json",
							"json_key": "A TALE OF TWO CITIES",
							"title": "A TALE OF TWO CITIES",
							"author": "By Charles Dickens",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 25,
							"book": {}},
				"mountains-of-madness": {"file_path": "res://books/At-the-MOUNTAINS-of-MADNESS.json",
							"json_key": "At the MOUNTAINS of MADNESS",
							"title": "At the MOUNTAINS of MADNESS",
							"author": "By H. P. Lovecraft",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 26,
							"book": {}},
				"autobiography-benjamin-franklin": {"file_path": "res://books/AUTOBIOGRAPHY-OF-BENJAMIN-FRANKLIN.json",
							"json_key": "AUTOBIOGRAPHY OF BENJAMIN FRANKLIN",
							"title": "AUTOBIOGRAPHY OF BENJAMIN FRANKLIN",
							"author": "By Benjamin Franklin",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 27,
							"book": {}},
				"beyond-good-and-evil": {"file_path": "res://books/BEYOND-GOOD-AND-EVIL.json",
							"json_key": "BEYOND GOOD AND EVIL",
							"title": "BEYOND GOOD AND EVIL",
							"author": "By Friedrich Nietzsche",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 28,
							"book": {}},
				"emma": {"file_path": "res://books/Emma.json",
							"json_key": "Emma",
							"title": "Emma",
							"author": "By Jane Austen",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 29,
							"book": {}},
				"great-expectations": {"file_path": "res://books/Great-Expectations.json",
							"json_key": "Great Expectations",
							"title": "Great Expectations",
							"author": "By Charles Dickens",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 30,
							"book": {}},
				"meditations": {"file_path": "res://books/MEDITATIONS.json",
							"json_key": "MEDITATIONS",
							"title": "MEDITATIONS",
							"author": "By Marcus Aurelius",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 31,
							"book": {}},
				"peter-pan": {"file_path": "res://books/Peter-Pan.json",
							"json_key": "Peter Pan",
							"title": "Peter Pan",
							"author": "By J. M. Barrie",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 32,
							"book": {}},
				"poirot-investigates": {"file_path": "res://books/POIROT-INVESTIGATES.json",
							"json_key": "POIROT INVESTIGATES",
							"title": "POIROT INVESTIGATES",
							"author": "By Agatha Christie",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 33,
							"book": {}},
				"selected-poems": {"file_path": "res://books/SELECTED-POEMS.json",
							"json_key": "SELECTED POEMS",
							"title": "SELECTED POEMS",
							"author": "By Robert Frost",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 34,
							"book": {}},
				"sense-and-sensibility": {"file_path": "res://books/Sense-and-Sensibility.json",
							"json_key": "Sense and Sensibility",
							"title": "Sense and Sensibility",
							"author": "By Jane Austen",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 35,
							"book": {}},
				"adventures-tom-sawyer": {"file_path": "res://books/THE-ADVENTURES-OF-TOM-SAWYER.json",
							"json_key": "THE ADVENTURES OF TOM SAWYER",
							"title": "THE ADVENTURES OF TOM SAWYER",
							"author": "By Mark Twain",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 36,
							"book": {}},
				"call-of-cthulhu": {"file_path": "res://books/The-CALL-of-CTHULHU.json",
							"json_key": "The CALL of CTHULHU",
							"title": "The CALL of CTHULHU",
							"author": "By H.P. Lovecraft",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 37,
							"book": {}},
				"confessions-augustine": {"file_path": "res://books/THE-CONFESSIONS-OF-SAINT-AUGUSTINE.json",
							"json_key": "THE CONFESSIONS OF SAINT AUGUSTINE",
							"title": "THE CONFESSIONS OF SAINT AUGUSTINE",
							"author": "By Saint Augustine",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 38,
							"book": {}},
				"fall-of-house-usher": {"file_path": "res://books/The-Fall-of-the-House-of-Usher.json",
							"json_key": "The Fall of the House of Usher",
							"title": "The Fall of the House of Usher",
							"author": "By Edgar Allan Poe",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 39,
							"book": {}},
				"hound-baskervilles": {"file_path": "res://books/THE-HOUND-OF-THE-BASKERVILLES.json",
							"json_key": "THE HOUND OF THE BASKERVILLES",
							"title": "THE HOUND OF THE BASKERVILLES",
							"author": "By Arthur Conan Doyle",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 40,
							"book": {}},
				"king-in-yellow": {
							"file_path": "res://books/THE-KING-IN-YELLOW.json",
							"json_key": "THE KING IN YELLOW",
							"title": "THE KING IN YELLOW",
							"author": "by Robert W. Chambers",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 41,
							"book": {}},
				"adventures-robinson-crusoe": {
							"file_path": "res://books/The-Life-and-Adventures-of-Robinson-Crusoe.json",
							"json_key": "The Life and Adventures of Robinson Crusoe",
							"title": "The Life and Adventures of Robinson Crusoe",
							"author": "by Daniel Defoe",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 42,
							"book": {}},
				"murder-roger-ackroyd": {
							"file_path": "res://books/THE-MURDER-OF-ROGER-ACKROYD.json",
							"json_key": "THE MURDER OF ROGER ACKROYD",
							"title": "THE MURDER OF ROGER ACKROYD",
							"author": "by Agatha Christie",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 43,
							"book": {}},
				"picture-dorian-grey": {
							"file_path": "res://books/The-Picture-of-Dorian-Gray.json",
							"json_key": "The Picture of Dorian Gray",
							"title": "The Picture of Dorian Gray",
							"author": "by Oscar Wilde",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 44,
							"book": {}},
				 "problems-of-philosophy": {
							"file_path": "res://books/THE-PROBLEMS-OF-PHILOSOPHY.json",
							"json_key": "THE PROBLEMS OF PHILOSOPHY",
							"title": "THE PROBLEMS OF PHILOSOPHY",
							"author": "by Bertrand Russell",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 45,
							"book": {}},
				 "scarlet-letter": {
							"file_path": "res://books/THE-SCARLET-LETTER.json",
							"json_key": "THE SCARLET LETTER",
							"title": "THE SCARLET LETTER",
							"author": "by Nathaniel Hawthorne",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 46,
							"book": {}},
				"secret-adversary": {
							"file_path": "res://books/THE-SECRET-ADVERSARY.json",
							"json_key": "THE SECRET ADVERSARY",
							"title": "THE SECRET ADVERSARY",
							"author": "by Agatha Christie",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 47,
							"book": {}},
				 "turn-of-the-screw": {
							"file_path": "res://books/The-Turn-of-the-Screw.json",
							"json_key": "The Turn of the Screw",
							"title": "The Turn of the Screw",
							"author": "by Henry James",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 48,
							"book": {}},
				"yellow-wallpaper": {
							"file_path": "res://books/The-Yellow-Wallpaper.json",
							"json_key": "The Yellow Wallpaper",
							"title": "The Yellow Wallpaper",
							"author": "by Charlotte Perkins Gilman",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 49,
							"book": {}},
				"treasure-island": {
							"file_path": "res://books/TREASURE-ISLAND.json",
							"json_key": "TREASURE ISLAND",
							"title": "TREASURE ISLAND",
							"author": "by Robert Louis Stevenson",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 50,
							"book": {}},
				 "wuthering-heights": {
							"file_path": "res://books/Wuthering-Heights.json",
							"json_key": "Wuthering Heights",
							"title": "Wuthering Heights",
							"author": "by Emily Bronte",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 51,
							"book": {}},
				"dame-camelias-fr": {
							"file_path": "res://books/LA-DAME-AUX-CAMÉLIAS.json",
							"json_key": "LA DAME AUX CAMÉLIAS",
							"title": "LA DAME AUX CAMÉLIAS",
							"author": "by Alexandre Dumas fils",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 52,
							"language": "fr",
							"book": {}},
				"phantom-opera-fr": {
							"file_path": "res://books/LE-FANTÔME-DE-L'OPÉRA.json",
							"json_key": "LE FANTÔME DE L'OPÉRA",
							"title": "LE FANTÔME DE L'OPÉRA",
							"author": "by Gaston Leroux",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 53,
							"language": "fr",
							"book": {}},
				"trois-musketeers-fr": {
							"file_path": "res://books/Les-Trois-Mousquetaires.json",
							"json_key": "Les Trois Mousquetaires",
							"title": "Les Trois Mousquetaires",
							"author": "by Alexandre Dumas",
							"currently_reading": false,
							"current_page": 1,
							"book_index": 54,
							"language": "fr",
							"book": {}}
							
				
							
							
				
							
}



func _ready():
	var temp_all_books = load_state()
	var temp_user_settings = load_user_settings()
	print("Temp books and temp user loaded")
	
	if temp_user_settings != {}:
		user_settings = temp_user_settings
	
	# Adding positions to the dict for loading
	# READ THIS!!
	# NOTE!!! Change the divine comedy to whatever new book you have added
	if temp_all_books != {}:
		if temp_all_books == null:
			save_state()
			return
		if "trois-musketeers-fr" not in temp_all_books.keys():
			implement_update(temp_all_books)
			temp_all_books = load_state()
		all_books = temp_all_books
		print("All books loaded")


func implement_update(temp_dict):
	# Loading the data from past save and then saving state to add the new books
	for x in temp_dict.keys():
		all_books[x] = temp_dict[x]
	save_state()


func load_books():
	for x in all_books.keys():
		if all_books[x]["currently_reading"]:
			var book_file = FileAccess.open(all_books[x]["file_path"], FileAccess.READ)
			var contents = book_file.get_as_text()
			var data = JSON.parse_string(contents)
			all_books[x]["book"] = data
			
	

func save_state():
	var save_file = FileAccess.open("user://savepositions.save", FileAccess.WRITE)
	var json_string = JSON.stringify(all_books)
	save_file.store_line(json_string)
	

func load_state():
	if not FileAccess.file_exists("user://savepositions.save"):
		return {}
	
	var save_file = FileAccess.open("user://savepositions.save", FileAccess.READ)
	var save_string = save_file.get_line()
	var json = JSON.new()
	var error = json.parse(save_string)
	if error == OK:
		var data_recieved = json.data
		return data_recieved
	else:
		print("JSON parse Error: ", json.get_error_message(), " in ", save_string, " at line ", json.get_error_line())
		return null


# TESTING for addition of settings
var user_settings = {"font_size": 50,
					"text_amount": 1,
					"text_align": 0,
					"colors": {"button": "res://mainButtonDefaultColor.tres",
								"label": "res://mainLabelDefaultColor.tres",
								"panel": "res://mainPanelDefaultColor.tres"}
					}
					
func save_user_settings():
	var save_file = FileAccess.open("user://savesettings.save", FileAccess.WRITE)
	var json_string = JSON.stringify(user_settings)
	save_file.store_line(json_string)
	

func load_user_settings():
	if not FileAccess.file_exists("user://savesettings.save"):
		return {}
	
	var save_file = FileAccess.open("user://savesettings.save", FileAccess.READ)
	var save_string = save_file.get_line()
	var json = JSON.new()
	var parse_result = json.parse(save_string)
	return json.get_data()


func count_currently_reading():
	var count = 0
	for x in all_books:
		if all_books[x]["currently_reading"]:
			count += 1
	return count
