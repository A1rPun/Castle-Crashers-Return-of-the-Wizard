extends Control

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://src/levels/NecroLair.tscn");
	elif Input.is_action_just_pressed("use_item"):
		get_tree().change_scene("res://src/game/Character_Select.tscn");
