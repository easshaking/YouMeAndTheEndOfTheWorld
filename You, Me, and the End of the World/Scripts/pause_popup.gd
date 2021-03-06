extends Popup

#onready var resumeButton = get_node("Resume Button")
#onready var saveButton = get_node("Save Button")
#onready var loadButton = get_node("Load Button")
#onready var settingsButton = get_node("Settings Button")
#onready var helpButton = get_node("Help Button")
#onready var mainMenuButton = get_node("Main Menu Button")

func _ready():
	print("popup is up")

func _unpause():
	.hide()
	get_tree().paused = false
	print("Game unpaused")
	
func saveMenu():
	#TODO: check whether the player is in a position to save
	#var canSave = getCanPlayerSave()
	var canSave = true
	if (canSave):
		#TODO: add a save screen
		print("You will be redirected to the save screen")
	else:
		print("All your saves are belong to us")
	
func loadMenu():
	#TODO: add a load screen
	print("You will be redirected to the load screen")
	
func settingsMenu():
	#TODO: add settings menu
	print("You will be redirected to the settings screen")
	
func helpMenu():
	#TODO: add help menu
	print("Assistance requested")
	
func mainMenuOptions():
	#TODO: add an options screen asking whether the player would like to
	#save and quit, quit without saving, or not quit
	get_tree().paused = false
	get_tree().change_scene("res://tscn files/MainMenu.tscn")

func quitGame():
	get_tree().quit()
