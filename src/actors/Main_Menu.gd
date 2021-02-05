extends Control

func _ready():
	for button in $Buttons.get_children():
		button.connect("pressed", self, "_on_button_pressed", [button.scene_to_load])

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://src/game/Character_Select.tscn");
	elif Input.is_action_just_pressed("use_item"):
		_on_QuitButton_pressed();

func _on_button_pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)

func _on_QuitButton_pressed() -> void:
	get_tree().quit()
