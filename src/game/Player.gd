extends Actor

@export var character_id: int;

var can_move = true; # TODO
var is_moving = false;
var is_jumping = false;
var face_left = false;
const item_select_counter_max = 100;
var item_select_counter = item_select_counter_max;
var item_select_index = 0;


func change_character(id):
	$Character.change_character(id)


func _physics_process(delta: float) -> void:
	is_moving = Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")  or Input.is_action_pressed("move_down")  or Input.is_action_pressed("move_up");
	if can_move:
		vel = move_velocity(vel, delta);

	#offsetY += Input.get_action_strength("move_down") - Input.get_action_strength("move_up");
	
	if Input.is_action_just_pressed("switch_left") or Input.is_action_just_pressed("switch_right"):
		item_select_counter = 0;
	
	if Input.is_action_pressed("magic"):
		$Character/Sprite/magic_particles.emitting = true;
	elif Input.is_action_just_released("magic"):
		$Character/Sprite/magic_particles.emitting = false;

	item_select_counter += 1;
	update_texture();


func get_direction() -> Vector3:	
	return Vector3(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up"),
		-1.0 if Input.is_action_just_pressed("jump") and !is_jumping else 0.0
	);


func move_velocity(vel: Vector3, delta: float) -> Vector3:
	var direction = get_direction();
	vel.x = speed.x * direction.x;
	vel.y = speed.y * direction.y;
	vel.z += gravity * delta;
	
	if direction.z == -1.0:
		vel.z = speed.z * direction.z;
		is_jumping = true;
		
	set_velocity(Vector2(vel.x, vel.y))
	set_up_direction(Vector2.UP)
	move_and_slide()
	var newvel = vel;
	
	#if is_attacking and $Sprite.position.y > height_cap:
	#	vel.z = -10.0;
	
	if is_jumping:
		$Character/Sprite.position.y += vel.z;
	
	if $Character/Sprite.position.y > 0.0:
		$Character/Sprite.position.y = 0.0;
		is_jumping = false;
#		state_machine.travel(states.idle);
		
	vel.x = newvel.x;
	vel.y = newvel.y;
	return vel;


func update_texture():
	var direction = get_direction();
	if is_moving:
		if direction.x < 0.0 and !face_left:
			$Character/Sprite.scale.x = -1.0;
			face_left = true;
		elif direction.x > 0.0 and face_left:
			$Character/Sprite.scale.x = 1.0;
			face_left = false;
			
	$Character/Sprite/item_select.visible = item_select_counter < item_select_counter_max;
