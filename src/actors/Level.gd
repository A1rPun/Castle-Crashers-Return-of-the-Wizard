extends Node2D

func _ready():
	$Sorter/Player.character_id = globals.character_id
	$Sorter/Player.change_character(globals.character_id)
	
	var enemyScene = load("res://src/game/Character.tscn")
	
	for n in range(1, 37):
		var enemy = enemyScene.instantiate()
		enemy.character_id = n
		enemy.position.y = -100
		enemy.position.x = n * 100
		$Sorter.add_child(enemy)
