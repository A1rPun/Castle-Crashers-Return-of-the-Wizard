extends Control

const composite_sprites = preload("res://src/actors/CompositeSelectSprites.gd");
const totalCharacters = len(composite_sprites.character_select_spritesheet) - 1;

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("move_up"):
		globals.character_id += 1;
		change_sprite();
	elif Input.is_action_just_pressed("move_down"):
		globals.character_id -= 1;
		change_sprite();
	elif Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://src/levels/NecroLair.tscn");
	elif Input.is_action_just_pressed("use_item"):
		get_tree().change_scene("res://src/game/Main_Menu.tscn");

func change_sprite():
	if globals.character_id > totalCharacters:
		globals.character_id = 1;
	elif globals.character_id < 1:
		globals.character_id = totalCharacters;
	$Character.texture = composite_sprites.character_select_spritesheet[globals.character_id];
