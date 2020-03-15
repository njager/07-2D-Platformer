# Saves and loads savegame files
# Each node is responsible for finding itself in the save_game
# dict so saves don't rely on the nodes' path or their source file
extends Resource

class_name SaveGame

export var game_version : String = '0.1.0'
export var data : Dictionary = {}
