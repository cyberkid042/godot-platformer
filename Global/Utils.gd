extends Node


const SAVE_PATH = "res://savegame.bin"

func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var data: Dictionary = {
		"hp": Game.playerHP,
		"gold": Game.gold
	}

	var jstr = JSON.stringify(data)
	file.store_line(jstr)

func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH) and not file.eof_reached():
		var currentLine = JSON.parse_string(file.get_line())
		if currentLine:
			Game.playerHP = currentLine["hp"]
			Game.gold = currentLine["gold"]
