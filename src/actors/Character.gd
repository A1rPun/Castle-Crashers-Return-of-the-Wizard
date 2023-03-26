extends Actor

@export var character_id: int;

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
#	$AnimationTree.active = true;
#	state_machine = $AnimationTree.get("parameters/playback");
	change_character(self.character_id);

func change_character(id):
	$Sprite/head.texture = composite_sprites.head_spritesheet[id];
	$Sprite/head_back.texture = composite_sprites.head_back_spritesheet[id];
	$Sprite/head_forward.texture = composite_sprites.head_forward_spritesheet[id];
	$Sprite/head_front.texture = composite_sprites.head_front_spritesheet[id];
	$Sprite/head_down.texture = composite_sprites.head_down_spritesheet[id];
	$Sprite/normal_body_sprite/body.texture = composite_sprites.body_spritesheet[id];
	$Sprite/normal_body_sprite/body_side.texture = composite_sprites.body_side_spritesheet[id];
	$Sprite/normal_body_sprite/shield.texture = composite_sprites.shield_spritesheet[id];
	$Sprite/normal_body_sprite/shield_front.texture = composite_sprites.shield_front_spritesheet[id];
	$Sprite/magic_particles.process_material.color = composite_sprites.magic_color[id] if composite_sprites.magic_color.has(id) else Color(255, 255, 255);

	if id == characters.barbarian or id == characters.king or id == characters.necromancer:
		$Sprite/head.offset.y = -10;
		$Sprite/head_back.offset.y = -10;
		$Sprite/head_forward.offset.y = -10;
		$Sprite/head_front.offset.y = -10;
		$Sprite/head_down.offset.y = -10;

#func _on_player_anim_animation_finished(anim_name: String) -> void:
#	if anim_name == states.light_attack_one:
#		state_machine.travel(states.idle);
