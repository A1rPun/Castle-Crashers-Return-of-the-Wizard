extends Actor

export(int) var character_id;

var can_move = true; # TODO
var is_moving = false;
var is_jumping = false;
var face_left = false;
const item_select_counter_max = 100;
var item_select_counter = item_select_counter_max;
var item_select_index = 0;
var state_machine;

const states = {
	"idle": "IDLE",
	"block": "BLOCK",
	"light_attack_one": "LIGHT_ATTACK_ONE",
	"light_attack_two": "LIGHT_ATTACK_TWO",
	"heavy_attack_slam": "HEAVY_ATTACK_SLAM",
	"heavy_attack_one": "HEAVY_ATTACK_SLAM",
	"heavy_uppercut": "HEAVY_ATTACK_SLAM",
	"heavy_sword_spin": "HEAVY_ATTACK_SLAM"
};

const characters = {
	"barbarian": 6,
	"king": 12,
	"necromancer": 20,
};

const composite_sprites = preload("res://src/actors/CompositePlayerSprites.gd");

func _ready():
	state_machine = $AnimationTree.get("parameters/playback");
	change_character(self.character_id);

func _physics_process(delta: float) -> void:
	is_moving = Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")  or Input.is_action_pressed("move_down")  or Input.is_action_pressed("move_up");
	if can_move:
		velocity = move_velocity(velocity, delta);

	#offsetY += Input.get_action_strength("move_down") - Input.get_action_strength("move_up");
	
	if Input.is_action_just_pressed("switch_left") or Input.is_action_just_pressed("switch_right"):
		item_select_counter = 0;
	
	#if Input.is_action_just_pressed("use_item"):

	if Input.is_action_just_pressed("light_attack"):
		var current = state_machine.get_current_node();
		var state = states.light_attack_two if current == states.light_attack_one else states.light_attack_one;
		state_machine.travel(state);
	elif Input.is_action_just_pressed("heavy_attack"):
		state_machine.travel(states.heavy_attack_slam if is_jumping else states.heavy_attack_one);
	elif !is_jumping && Input.is_action_pressed("block"):
		state_machine.travel(states.block);
	elif Input.is_action_just_released("block"):
		state_machine.travel(states.idle);
		
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
		state_machine.travel(states.idle);
		
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
			
	$item_select.visible = item_select_counter < item_select_counter_max;

func change_character(character_id):
	$PlayerSprite/head.texture = composite_sprites.head_spritesheet[character_id];
	$PlayerSprite/head_back.texture = composite_sprites.head_back_spritesheet[character_id];
	$PlayerSprite/head_forward.texture = composite_sprites.head_forward_spritesheet[character_id];
	$PlayerSprite/head_front.texture = composite_sprites.head_front_spritesheet[character_id];
	$PlayerSprite/head_down.texture = composite_sprites.head_down_spritesheet[character_id];
	$PlayerSprite/normal_body_sprite/body.texture = composite_sprites.body_spritesheet[character_id];
	$PlayerSprite/normal_body_sprite/body_side.texture = composite_sprites.body_side_spritesheet[character_id];
	$PlayerSprite/normal_body_sprite/shield.texture = composite_sprites.shield_spritesheet[character_id];
	$PlayerSprite/normal_body_sprite/shield_front.texture = composite_sprites.shield_front_spritesheet[character_id];

	if character_id == characters.barbarian or character_id == characters.king or character_id == characters.necromancer:
		$PlayerSprite/head.offset.y = -10;
		$PlayerSprite/head_back.offset.y = -10;
		$PlayerSprite/head_forward.offset.y = -10;
		$PlayerSprite/head_front.offset.y = -10;
		$PlayerSprite/head_down.offset.y = -10;

func _on_player_anim_animation_finished(anim_name: String) -> void:
	if anim_name == states.light_attack_one:
		state_machine.travel(states.idle);
