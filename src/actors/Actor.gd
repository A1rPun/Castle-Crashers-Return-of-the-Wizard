extends CharacterBody2D
class_name Actor

@export var speed := Vector3(600.0, 600.0, 15.0); # 1500.0 jump
@export var gravity := 50.0; #  4000.0;
@export var height_cap := -300.0;
@export var spin_gravity := 3000.0;
@export var vel := Vector3.ZERO;
@export var offsetY := 0.0;
@export var beefy := false;
@export var blocking := false;
@export var health := 100;
