extends Actor

var is_moving := false;
var is_jumping := false;
var face_left := false;
var state := 0; # TODO: enum, 0 = idle
#var running_friction := 0.9;
var item_select_counter_max := 100;
var item_select_counter := 1337;
var item_select_index := 0;

func _physics_process(delta: float) -> void:
	is_moving = Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")  or Input.is_action_pressed("move_down")  or Input.is_action_pressed("move_up");
	velocity = move_velocity(velocity, delta);
	#offsetY += Input.get_action_strength("move_down") - Input.get_action_strength("move_up");
	
	if Input.is_action_just_pressed("switch_left") or Input.is_action_just_pressed("switch_right"):
		item_select_counter = 0;
	
	if Input.is_action_just_pressed("use_item"):
		if beefy:
			to_normal();
			beefy = false;
		else: 
			to_beefy();
			beefy = true;

	if !beefy and Input.is_action_just_pressed("light_attack"):
		state = 2 if state == 1 else 1;
	elif Input.is_action_just_pressed("heavy_attack"):
		state = 3 if is_jumping else 5;
	elif Input.is_action_pressed("block"):
		state = 4;
	elif state == 4:
		state = 0;
		
	item_select_counter += 1;
	update_texture();
	
func get_direction() -> Vector3:	
	return Vector3(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up"),
		-1.0 if Input.is_action_just_pressed("jump") and !is_jumping else 0.0
	);

func move_velocity(velocity: Vector3, delta: float) -> Vector3:
	var direction = get_direction();
	velocity.x = speed.x * direction.x;
	velocity.y = speed.y * direction.y;
	velocity.z += gravity * delta;
	
	if direction.z == -1.0:
		velocity.z = speed.z * direction.z;
		is_jumping = true;
		
	var newvel = move_and_slide(Vector2(velocity.x, velocity.y), Vector2.UP);
	
	#if is_attacking and $PlayerSprite.position.y > height_cap:
	#	velocity.z = -10.0;
	
	if is_jumping:
		$PlayerSprite.position.y += velocity.z;
	
	if $PlayerSprite.position.y > 0.0:
		$PlayerSprite.position.y = 0.0;
		is_jumping = false;
		state = 0;
		
	velocity.x = newvel.x;
	velocity.y = newvel.y;
	return velocity;

func update_texture():
	var direction = get_direction();
	if is_moving:
		if direction.x < 0.0 and !face_left:
			$PlayerSprite.scale.x = -1.0;
			face_left = true;
		elif direction.x > 0.0 and face_left:
			$PlayerSprite.scale.x = 1.0;
			face_left = false;
			
	if state == 1:
		$player_anim.play("LIGHT_ATTACK_ONE");
	elif state == 2:
		$player_anim.play("LIGHT_ATTACK_TWO");
	elif state == 3:
		$player_anim.play("HEAVY_ATTACK");
	elif state == 4:
		$player_anim.play("BEEFY_BLOCK" if beefy else "BLOCK");
	else:
		$player_anim.play("BEEFY_IDLE" if beefy else "IDLE");
	
	if item_select_counter < item_select_counter_max:
		$item_select.visible = true;
	else:
		$item_select.visible = false;
	
func to_beefy():
	$wings_anim.stop();
	$PlayerSprite/beefy_body_sprite.visible = true;
	$PlayerSprite/normal_body_sprite.visible = false;
	
func to_normal():
	$wings_anim.play("wings");
	$PlayerSprite/beefy_body_sprite.visible = false;
	$PlayerSprite/normal_body_sprite.visible = true;


func _on_player_anim_animation_finished(anim_name: String) -> void:
	if anim_name == "LIGHT_ATTACK_ONE" or anim_name == "LIGHT_ATTACK_TWO":
		state = 0;
