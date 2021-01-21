extends Node2D

func _ready():
	$YSort/Player.character_id = globals.character_id;
	$YSort/Player.change_character(globals.character_id)
