extends Node2D

func _ready():
	$Node2D/Player.character_id = globals.character_id;
	$Node2D/Player.change_character(globals.character_id)
