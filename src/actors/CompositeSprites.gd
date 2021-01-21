extends Sprite

#0	Nothing
#1	Green Knight
#2	Red Knight
#3	Blue Knight
#4	Orange Knight
#5	Gray Knight
#6	Barbarian
#7	Thief
#8	Fencer
#9	Beekeeper
#10	Industralist
#11	Alien
#12	King
#13	Brute
#14	Snakey
#15	Saracen
#16	Royal Guard
#17	Stoveface
#18	Peasant
#19	Bear
#20	Necromancer
#21	Conehead
#22	Civillian
#23	Open-faced Gray Knight
#24	Fire Demon
#25	Skeleton
#26	Iceskimo
#27	Ninja
#28	Cultist
#29	Pink Knight
#30	Blacksmith
#31	Hatty
#32	Groom

const head_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_head.svg"),
	2: preload("res://src/img/player/2_head.svg"),
	3: preload("res://src/img/player/3_head.svg"),
	4: preload("res://src/img/player/4_head.svg"),
	5: preload("res://src/img/player/5_head.svg"),
	6: preload("res://src/img/player/6_head.svg"),
	7: preload("res://src/img/player/7_head.svg"),
	8: preload("res://src/img/player/8_head.svg"),
	9: preload("res://src/img/player/9_head.svg"),
	10: preload("res://src/img/player/10_head.svg"),
	11: preload("res://src/img/player/11_head.svg"),
	12: preload("res://src/img/player/12_head.svg"),
	13: preload("res://src/img/player/13_head.svg"),
	14: preload("res://src/img/player/14_head.svg"),
	15: preload("res://src/img/player/15_head.svg"),
	16: preload("res://src/img/player/16_head.svg"),
	17: preload("res://src/img/player/17_head.svg"),
	18: preload("res://src/img/player/18_head.svg"),
	19: preload("res://src/img/player/19_head.svg"),
	20: preload("res://src/img/player/20_head.svg"),
	21: preload("res://src/img/player/21_head.svg"),
	22: preload("res://src/img/player/22_head.svg"),
	23: preload("res://src/img/player/23_head.svg"),
	24: preload("res://src/img/player/24_head.svg"),
	25: preload("res://src/img/player/25_head.svg"),
	26: preload("res://src/img/player/26_head.svg"),
	27: preload("res://src/img/player/27_head.svg"),
	28: preload("res://src/img/player/28_head.svg"),
	29: preload("res://src/img/player/29_head.svg"),
	30: preload("res://src/img/player/30_head.svg"),
	31: preload("res://src/img/player/31_head.svg"),
	32: preload("res://src/img/player/21_head.svg"),
};

const head_forward_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_head_forward.svg"),
	2: preload("res://src/img/player/2_head_forward.svg"),
	3: preload("res://src/img/player/3_head_forward.svg"),
	4: preload("res://src/img/player/4_head_forward.svg"),
	5: preload("res://src/img/player/5_head_forward.svg"),
	6: preload("res://src/img/player/6_head_forward.svg"),
	7: preload("res://src/img/player/7_head_forward.svg"),
	8: preload("res://src/img/player/8_head_forward.svg"),
	9: preload("res://src/img/player/9_head_forward.svg"),
	10: preload("res://src/img/player/10_head_forward.svg"),
	11: preload("res://src/img/player/11_head_forward.svg"),
	12: preload("res://src/img/player/12_head_forward.svg"),
	13: preload("res://src/img/player/13_head_forward.svg"),
	14: preload("res://src/img/player/14_head_forward.svg"),
	15: preload("res://src/img/player/15_head_forward.svg"),
	16: preload("res://src/img/player/16_head_forward.svg"),
	17: preload("res://src/img/player/17_head_forward.svg"),
	18: preload("res://src/img/player/18_head_forward.svg"),
	19: preload("res://src/img/player/19_head_forward.svg"),
	20: preload("res://src/img/player/20_head_forward.svg"),
	21: preload("res://src/img/player/21_head_forward.svg"),
	22: preload("res://src/img/player/22_head_forward.svg"),
	23: preload("res://src/img/player/23_head_forward.svg"),
	24: preload("res://src/img/player/24_head_forward.svg"),
	25: preload("res://src/img/player/25_head_forward.svg"),
	26: preload("res://src/img/player/26_head_forward.svg"),
	27: preload("res://src/img/player/27_head_forward.svg"),
	28: preload("res://src/img/player/28_head_forward.svg"),
	29: preload("res://src/img/player/29_head_forward.svg"),
	30: preload("res://src/img/player/30_head_forward.svg"),
	31: preload("res://src/img/player/31_head_forward.svg"),
	32: preload("res://src/img/player/21_head_forward.svg"),
};

const head_back_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_head_back.svg"),
	2: preload("res://src/img/player/2_head_back.svg"),
	3: preload("res://src/img/player/3_head_back.svg"),
	4: preload("res://src/img/player/4_head_back.svg"),
	5: preload("res://src/img/player/5_head_back.svg"),
	6: preload("res://src/img/player/6_head_back.svg"),
	7: preload("res://src/img/player/7_head_back.svg"),
	8: preload("res://src/img/player/8_head_back.svg"),
	9: preload("res://src/img/player/9_head_back.svg"),
	10: preload("res://src/img/player/10_head_back.svg"),
	11: preload("res://src/img/player/11_head_back.svg"),
	12: preload("res://src/img/player/12_head_back.svg"),
	13: preload("res://src/img/player/13_head_back.svg"),
	14: preload("res://src/img/player/14_head_back.svg"),
	15: preload("res://src/img/player/15_head_back.svg"),
	16: preload("res://src/img/player/16_head_back.svg"),
	17: preload("res://src/img/player/17_head_back.svg"),
	18: preload("res://src/img/player/18_head_back.svg"),
	19: preload("res://src/img/player/19_head_back.svg"),
	20: preload("res://src/img/player/20_head_back.svg"),
	21: preload("res://src/img/player/21_head_back.svg"),
	22: preload("res://src/img/player/22_head_back.svg"),
	23: preload("res://src/img/player/5_head_back.svg"),
	24: preload("res://src/img/player/24_head_back.svg"),
	25: preload("res://src/img/player/25_head_back.svg"),
	26: preload("res://src/img/player/26_head_back.svg"),
	27: preload("res://src/img/player/27_head_back.svg"),
	28: preload("res://src/img/player/28_head_back.svg"),
	29: preload("res://src/img/player/29_head_back.svg"),
	30: preload("res://src/img/player/30_head_back.svg"),
	31: preload("res://src/img/player/31_head_back.svg"),
	32: preload("res://src/img/player/21_head_back.svg"),
};

const head_front_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_head_front.svg"),
	2: preload("res://src/img/player/2_head_front.svg"),
	3: preload("res://src/img/player/3_head_front.svg"),
	4: preload("res://src/img/player/4_head_front.svg"),
	5: preload("res://src/img/player/5_head_front.svg"),
	6: preload("res://src/img/player/6_head_front.svg"),
	7: preload("res://src/img/player/7_head_front.svg"),
	8: preload("res://src/img/player/8_head_front.svg"),
	9: preload("res://src/img/player/9_head_front.svg"),
	10: preload("res://src/img/player/10_head_front.svg"),
	11: preload("res://src/img/player/11_head_front.svg"),
	12: preload("res://src/img/player/12_head_front.svg"),
	13: preload("res://src/img/player/13_head_front.svg"),
	14: preload("res://src/img/player/14_head_front.svg"),
	15: preload("res://src/img/player/15_head_front.svg"),
	16: preload("res://src/img/player/16_head_front.svg"),
	17: preload("res://src/img/player/17_head_front.svg"),
	18: preload("res://src/img/player/18_head_front.svg"),
	19: preload("res://src/img/player/19_head_front.svg"),
	20: preload("res://src/img/player/20_head_front.svg"),
	21: preload("res://src/img/player/21_head_front.svg"),
	22: preload("res://src/img/player/22_head_front.svg"),
	23: preload("res://src/img/player/23_head_front.svg"),
	24: preload("res://src/img/player/24_head_front.svg"),
	25: preload("res://src/img/player/25_head_front.svg"),
	26: preload("res://src/img/player/26_head_front.svg"),
	27: preload("res://src/img/player/27_head_front.svg"),
	28: preload("res://src/img/player/28_head_front.svg"),
	29: preload("res://src/img/player/29_head_front.svg"),
	30: preload("res://src/img/player/30_head_front.svg"),
	31: preload("res://src/img/player/31_head_front.svg"),
	32: preload("res://src/img/player/21_head_front.svg"),
};

const head_down_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_head_down.svg"),
	2: preload("res://src/img/player/2_head_down.svg"),
	3: preload("res://src/img/player/3_head_down.svg"),
	4: preload("res://src/img/player/4_head_down.svg"),
	5: preload("res://src/img/player/5_head_down.svg"),
	6: preload("res://src/img/player/6_head_down.svg"),
	7: preload("res://src/img/player/7_head_down.svg"),
	8: preload("res://src/img/player/8_head_down.svg"),
	9: preload("res://src/img/player/9_head_down.svg"),
	10: preload("res://src/img/player/10_head_down.svg"),
	11: preload("res://src/img/player/11_head_down.svg"),
	12: preload("res://src/img/player/12_head_down.svg"),
	13: preload("res://src/img/player/13_head_down.svg"),
	14: preload("res://src/img/player/14_head_down.svg"),
	15: preload("res://src/img/player/15_head_down.svg"),
	16: preload("res://src/img/player/16_head_down.svg"),
	17: preload("res://src/img/player/17_head_down.svg"),
	18: preload("res://src/img/player/18_head_down.svg"),
	19: preload("res://src/img/player/19_head_down.svg"),
	20: preload("res://src/img/player/20_head_down.svg"),
	21: preload("res://src/img/player/21_head_down.svg"),
	22: preload("res://src/img/player/22_head_down.svg"),
	23: preload("res://src/img/player/23_head_down.svg"),
	24: preload("res://src/img/player/24_head_down.svg"),
	25: preload("res://src/img/player/25_head_down.svg"),
	26: preload("res://src/img/player/26_head_down.svg"),
	27: preload("res://src/img/player/27_head_down.svg"),
	28: preload("res://src/img/player/28_head_down.svg"),
	29: preload("res://src/img/player/29_head_down.svg"),
	30: preload("res://src/img/player/30_head_down.svg"),
	31: preload("res://src/img/player/31_head_down.svg"),
	32: preload("res://src/img/player/21_head_down.svg"),
};

const body_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_body.svg"),
	2: preload("res://src/img/player/2_body.svg"),
	3: preload("res://src/img/player/3_body.svg"),
	4: preload("res://src/img/player/4_body.svg"),
	5: preload("res://src/img/player/5_body.svg"),
	6: preload("res://src/img/player/6_body.svg"),
	7: preload("res://src/img/player/7_body.svg"),
	8: preload("res://src/img/player/8_body.svg"),
	9: preload("res://src/img/player/9_body.svg"),
	10: preload("res://src/img/player/10_body.svg"),
	11: preload("res://src/img/player/11_body.svg"),
	12: preload("res://src/img/player/12_body.svg"),
	13: preload("res://src/img/player/13_body.svg"),
	14: preload("res://src/img/player/14_body.svg"),
	15: preload("res://src/img/player/15_body.svg"),
	16: preload("res://src/img/player/16_body.svg"),
	17: preload("res://src/img/player/20_body.svg"),
	18: preload("res://src/img/player/18_body.svg"),
	19: preload("res://src/img/player/19_body.svg"),
	20: preload("res://src/img/player/20_body.svg"),
	21: preload("res://src/img/player/20_body.svg"),
	22: preload("res://src/img/player/18_body.svg"),
	23: preload("res://src/img/player/5_body.svg"),
	24: preload("res://src/img/player/24_body.svg"),
	25: preload("res://src/img/player/25_body.svg"),
	26: preload("res://src/img/player/26_body.svg"),
	27: preload("res://src/img/player/27_body.svg"),
	28: preload("res://src/img/player/28_body.svg"),
	29: preload("res://src/img/player/29_body.svg"),
	30: preload("res://src/img/player/30_body.svg"),
	31: preload("res://src/img/player/31_body.svg"),
	32: preload("res://src/img/player/21_body.svg"),
};

const body_side_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_body_side.svg"),
	2: preload("res://src/img/player/2_body_side.svg"),
	3: preload("res://src/img/player/3_body_side.svg"),
	4: preload("res://src/img/player/4_body_side.svg"),
	5: preload("res://src/img/player/5_body_side.svg"),
	6: preload("res://src/img/player/6_body_side.svg"),
	7: preload("res://src/img/player/7_body_side.svg"),
	8: preload("res://src/img/player/8_body_side.svg"),
	9: preload("res://src/img/player/9_body_side.svg"),
	10: preload("res://src/img/player/10_body_side.svg"),
	11: preload("res://src/img/player/11_body_side.svg"),
	12: preload("res://src/img/player/12_body_side.svg"),
	13: preload("res://src/img/player/13_body_side.svg"),
	14: preload("res://src/img/player/14_body_side.svg"),
	15: preload("res://src/img/player/15_body_side.svg"),
	16: preload("res://src/img/player/16_body_side.svg"),
	17: preload("res://src/img/player/20_body_side.svg"),
	18: preload("res://src/img/player/18_body_side.svg"),
	19: preload("res://src/img/player/19_body_side.svg"),
	20: preload("res://src/img/player/20_body_side.svg"),
	21: preload("res://src/img/player/20_body_side.svg"),
	22: preload("res://src/img/player/18_body_side.svg"),
	23: preload("res://src/img/player/5_body_side.svg"),
	24: preload("res://src/img/player/24_body_side.svg"),
	25: preload("res://src/img/player/25_body_side.svg"),
	26: preload("res://src/img/player/26_body.svg"),
	27: preload("res://src/img/player/27_body_side.svg"),
	28: preload("res://src/img/player/28_body_side.svg"),
	29: preload("res://src/img/player/29_body_side.svg"),
	30: preload("res://src/img/player/30_body_side.svg"),
	31: preload("res://src/img/player/31_body_side.svg"),
	32: preload("res://src/img/player/21_body_side.svg"),
};

const shield_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_shield.svg"),
	2: preload("res://src/img/player/2_shield.svg"),
	3: preload("res://src/img/player/3_shield.svg"),
	4: preload("res://src/img/player/4_shield.svg"),
	5: preload("res://src/img/player/5_shield.svg"),
	6: preload("res://src/img/player/6_shield.svg"),
	7: preload("res://src/img/player/7_shield.svg"),
	8: preload("res://src/img/player/8_shield.svg"),
	9: preload("res://src/img/player/9_shield.svg"),
	10: preload("res://src/img/player/10_shield.svg"),
	11: preload("res://src/img/player/11_shield.svg"),
	12: preload("res://src/img/player/12_shield.svg"),
	13: preload("res://src/img/player/13_shield.svg"),
	14: preload("res://src/img/player/14_shield.svg"),
	15: preload("res://src/img/player/15_shield.svg"),
	16: preload("res://src/img/player/16_shield.svg"),
	17: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	18: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	19: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	20: preload("res://src/img/player/20_shield.svg"), # Check if it's the same used in CC
	21: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	22: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	23: preload("res://src/img/player/5_shield.svg"),
	24: preload("res://src/img/player/20_shield.svg"), # Check if it's the same used in CC
	25: preload("res://src/img/player/25_shield.svg"), # Check if it's the same used in CC
	26: preload("res://src/img/player/26_shield.svg"),
	27: preload("res://src/img/player/27_shield.svg"),
	28: preload("res://src/img/player/28_shield.svg"),
	29: preload("res://src/img/player/29_shield.svg"),
	30: preload("res://src/img/player/30_shield.svg"),
	31: preload("res://src/img/player/31_shield.svg"),
	32: preload("res://src/img/player/17_shield.svg"),
};

const shield_front_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/1_shield_front.svg"),
	2: preload("res://src/img/player/2_shield_front.svg"),
	3: preload("res://src/img/player/3_shield_front.svg"),
	4: preload("res://src/img/player/4_shield_front.svg"),
	5: preload("res://src/img/player/5_shield_front.svg"),
	6: preload("res://src/img/player/6_shield_front.svg"),
	7: preload("res://src/img/player/7_shield_front.svg"),
	8: preload("res://src/img/player/8_shield_front.svg"),
	9: preload("res://src/img/player/9_shield_front.svg"),
	10: preload("res://src/img/player/10_shield_front.svg"),
	11: preload("res://src/img/player/11_shield_front.svg"),
	12: preload("res://src/img/player/12_shield_front.svg"),
	13: preload("res://src/img/player/13_shield_front.svg"),
	14: preload("res://src/img/player/14_shield_front.svg"),
	15: preload("res://src/img/player/15_shield_front.svg"),
	16: preload("res://src/img/player/16_shield_front.svg"),
	17: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	18: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	19: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	20: preload("res://src/img/player/20_shield_front.svg"), # Check if it's the same used in CC
	21: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	22: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	23: preload("res://src/img/player/5_shield_front.svg"),
	24: preload("res://src/img/player/20_shield_front.svg"), # Check if it's the same used in CC
	25: preload("res://src/img/player/25_shield_front.svg"), # Check if it's the same used in CC
	26: preload("res://src/img/player/26_shield_front.svg"),
	27: preload("res://src/img/player/27_shield_front.svg"),
	28: preload("res://src/img/player/28_shield_front.svg"),
	29: preload("res://src/img/player/29_shield_front.svg"),
	30: preload("res://src/img/player/30_shield_front.svg"),
	31: preload("res://src/img/player/31_shield_front.svg"),
	32: preload("res://src/img/player/17_shield_front.svg"),
};
