extends Actor

export(int) var character_id;

var can_move := true; # TODO
var is_moving := false;
var is_jumping := false;
var face_left := false;
var state := 0;
const item_select_counter_max := 100;
var item_select_counter := item_select_counter_max;
var item_select_index := 0;

const states := {
	"idle": 0,
	"block": 1,
	"light_attack_one": 2,
	"light_attack_two": 3,
	"heavy_attack_slam": 4,
	"heavy_attack_one": 5,
	"heavy_uppercut": 6,
	"heavy_sword_spin": 7
};

const characters := {
	"barbarian": 6,
	"king": 12,
	"necromancer": 20,
};

const composite_sprites = preload("res://src/actors/CompositePlayerSprites.gd");

func _ready():
	change_character(self.character_id);

func _physics_process(delta: float) -> void:
	is_moving = Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")  or Input.is_action_pressed("move_down")  or Input.is_action_pressed("move_up");
	if can_move:
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

	if Input.is_action_just_pressed("light_attack"):
		state = states.light_attack_two if state == states.light_attack_one else states.light_attack_one;
	elif Input.is_action_just_pressed("heavy_attack"):
		state = states.heavy_attack_slam if is_jumping else states.heavy_attack_one;
	elif !is_jumping && Input.is_action_pressed("block"):
		state = states.block;
	elif Input.is_action_just_released("block"):
		state = states.idle;
		
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
		state = states.idle;
		
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
			
	if state == states.light_attack_one:
		$player_anim.play("LIGHT_ATTACK_ONE");
	elif state == states.light_attack_two:
		$player_anim.play("LIGHT_ATTACK_TWO");
	elif state == states.heavy_attack_slam:
		$player_anim.play("HEAVY_ATTACK_SLAM");
	elif state == states.block:
		$player_anim.play("BLOCK_BEEFY" if beefy else "BLOCK");
	else:
		$player_anim.play("IDLE_BEEFY" if beefy else "IDLE");
	
	$item_select.visible = item_select_counter < item_select_counter_max;

func to_beefy():
	if self.character_id == characters.necromancer:
		$wings_anim.stop();
	$PlayerSprite/beefy_body_sprite.visible = true;
	$PlayerSprite/normal_body_sprite.visible = false;
	
func to_normal():
	if self.character_id == characters.necromancer:
		$wings_anim.play("wings");
	$PlayerSprite/beefy_body_sprite.visible = false;
	$PlayerSprite/normal_body_sprite.visible = true;


func _on_player_anim_animation_finished(anim_name: String) -> void:
	if anim_name == "LIGHT_ATTACK_ONE" or anim_name == "LIGHT_ATTACK_TWO":
		state = states.idle;

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
	
	if character_id == characters.necromancer:
		$PlayerSprite/left_winger.visible = true;
		$PlayerSprite/right_winger.visible = true;
		$wings_anim.play("wings");
		
	if character_id == characters.barbarian or character_id == characters.king or character_id == characters.necromancer:
		$PlayerSprite/head.offset.y = -10;
		$PlayerSprite/head_back.offset.y = -10;
		$PlayerSprite/head_forward.offset.y = -10;
		$PlayerSprite/head_front.offset.y = -10;
		$PlayerSprite/head_down.offset.y = -10;
