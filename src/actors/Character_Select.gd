extends Control

const composite_sprites = preload("res://src/actors/CompositeSelectSprites.gd");
const unlocked_characters = [1, 2, 3, 4, 5, 23, 29, 30, 33, 34];
const totalCharacters = len(unlocked_characters) - 1;
var selected_character_index = 0;

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("move_up"):
		selected_character_index += 1;
		change_sprite();
	elif Input.is_action_just_pressed("move_down"):
		selected_character_index -= 1;
		change_sprite();
	elif Input.is_action_just_pressed("jump"):
		$Nope.visible = false;
		$Confirm.visible = true;
		get_tree().change_scene("res://src/game/Map.tscn");
	elif Input.is_action_just_pressed("use_item"):
		get_tree().change_scene("res://src/game/Main_Menu.tscn");

func change_sprite():
	if selected_character_index > totalCharacters:
		selected_character_index = 0;
	elif selected_character_index < 0:
		selected_character_index = totalCharacters;
		
	var character_id = unlocked_characters[selected_character_index];
	$Character.texture = composite_sprites.character_select_spritesheet[character_id];
	globals.character_id = character_id;
