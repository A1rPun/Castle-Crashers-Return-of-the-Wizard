extends Control

# TODO Controller input

func _ready():
	for button in $Buttons.get_children():
		button.connect("pressed", Callable(self, "_on_button_pressed").bind(button.scene_to_load))

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene_to_file("res://src/game/Character_Select.tscn");
	elif Input.is_action_just_pressed("use_item"):
		_on_QuitButton_pressed();

func _on_button_pressed(scene_to_load):
	get_tree().change_scene_to_file(scene_to_load)

func _on_QuitButton_pressed() -> void:
	get_tree().quit()

func _on_PlayButton_mouse_entered() -> void:
	$Play.scale.x += 0.1;

func _on_PlayButton_mouse_exited() -> void:
	$Play.scale.x -= 0.1;

func _on_SettingsButton_mouse_entered() -> void:
	$Settings.scale.x += 0.1;

func _on_SettingsButton_mouse_exited() -> void:
	$Settings.scale.x -= 0.1;

func _on_CreditsButton_mouse_entered() -> void:
	$Credits.scale.x += 0.1;

func _on_CreditsButton_mouse_exited() -> void:
	$Credits.scale.x -= 0.1;

func _on_QuitButton_mouse_entered() -> void:
	$Quit.scale.x += 0.1;

func _on_QuitButton_mouse_exited() -> void:
	$Quit.scale.x -= 0.1;
