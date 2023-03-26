extends Node2D

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
#33 Lime
#34 Cyan
#35 Samurai
#36 Unmasked Ninja

const head_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_head.png"),
	2: preload("res://src/img/player/Blue Knight/2_head.png"),
	3: preload("res://src/img/player/Red Knight/3_head.png"),
	4: preload("res://src/img/player/Orange Knight/4_head.png"),
	5: preload("res://src/img/player/Gray Knight/5_head.png"),
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
	23: preload("res://src/img/player/Open Faced Gray Knight/23_head.png"),
	24: preload("res://src/img/player/24_head.svg"),
	25: preload("res://src/img/player/25_head.svg"),
	26: preload("res://src/img/player/26_head.svg"),
	27: preload("res://src/img/player/27_head.svg"),
	28: preload("res://src/img/player/28_head.svg"),
	29: preload("res://src/img/player/Pink Knight/29_head.png"),
	30: preload("res://src/img/player/Blacksmith/30_head.png"),
	31: preload("res://src/img/player/31_head.svg"),
	32: preload("res://src/img/player/21_head.svg"),
	33: preload("res://src/img/player/Lime Knight/2_head.png"),
	34: preload("res://src/img/player/Cyan Knight/34_head.png"),
	35: preload("res://src/img/player/Samurai/13_head.png"),
	36: preload("res://src/img/player/Unmasked Ninja/22_head.png"),
};

const head_forward_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_head_forward.png"),
	2: preload("res://src/img/player/Blue Knight/2_head_forward.png"),
	3: preload("res://src/img/player/Red Knight/3_head_forward.png"),
	4: preload("res://src/img/player/Orange Knight/4_head_forward.png"),
	5: preload("res://src/img/player/Gray Knight/5_head_forward.png"),
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
	23: preload("res://src/img/player/Open Faced Gray Knight/23_head_forward.png"),
	24: preload("res://src/img/player/24_head_forward.svg"),
	25: preload("res://src/img/player/25_head_forward.svg"),
	26: preload("res://src/img/player/26_head_forward.svg"),
	27: preload("res://src/img/player/27_head_forward.svg"),
	28: preload("res://src/img/player/28_head_forward.svg"),
	29: preload("res://src/img/player/Pink Knight/29_head_forward.png"),
	30: preload("res://src/img/player/Blacksmith/30_head_forward.png"),
	31: preload("res://src/img/player/31_head_forward.svg"),
	32: preload("res://src/img/player/21_head_forward.svg"),
	33: preload("res://src/img/player/Lime Knight/2_head_forward.png"),
	34: preload("res://src/img/player/Cyan Knight/34_head_forward.png"),
	35: preload("res://src/img/player/Samurai/13_head_forward.png"),
	36: preload("res://src/img/player/Unmasked Ninja/22_head_forward.png"),
};

const head_back_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_head_back.png"),
	2: preload("res://src/img/player/Blue Knight/2_head_back.png"),
	3: preload("res://src/img/player/Red Knight/3_head_back.png"),
	4: preload("res://src/img/player/Orange Knight/4_head_back.png"),
	5: preload("res://src/img/player/Gray Knight/5_head_back.png"),
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
	23: preload("res://src/img/player/Gray Knight/5_head_back.png"),
	24: preload("res://src/img/player/24_head_back.svg"),
	25: preload("res://src/img/player/25_head_back.svg"),
	26: preload("res://src/img/player/26_head_back.svg"),
	27: preload("res://src/img/player/27_head_back.svg"),
	28: preload("res://src/img/player/28_head_back.svg"),
	29: preload("res://src/img/player/Pink Knight/29_head_back.png"),
	30: preload("res://src/img/player/Blacksmith/30_head_back.png"),
	31: preload("res://src/img/player/31_head_back.svg"),
	32: preload("res://src/img/player/21_head_back.svg"),
	33: preload("res://src/img/player/Lime Knight/2_head_back.png"),
	34: preload("res://src/img/player/Cyan Knight/34_head_back.png"),
	35: preload("res://src/img/player/Samurai/13_head_back.png"),
	36: preload("res://src/img/player/Unmasked Ninja/22_head_back.png"),
};

const head_front_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_head_front.png"),
	2: preload("res://src/img/player/Blue Knight/2_head_front.png"),
	3: preload("res://src/img/player/Red Knight/3_head_front.png"),
	4: preload("res://src/img/player/Orange Knight/4_head_front.png"),
	5: preload("res://src/img/player/Gray Knight/5_head_front.png"),
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
	23: preload("res://src/img/player/Open Faced Gray Knight/23_head_front.png"),
	24: preload("res://src/img/player/24_head_front.svg"),
	25: preload("res://src/img/player/25_head_front.svg"),
	26: preload("res://src/img/player/26_head_front.svg"),
	27: preload("res://src/img/player/27_head_front.svg"),
	28: preload("res://src/img/player/28_head_front.svg"),
	29: preload("res://src/img/player/Pink Knight/29_head_front.png"),
	30: preload("res://src/img/player/Blacksmith/30_head_front.png"),
	31: preload("res://src/img/player/31_head_front.svg"),
	32: preload("res://src/img/player/21_head_front.svg"),
	33: preload("res://src/img/player/Lime Knight/2_head_front.png"),
	34: preload("res://src/img/player/Cyan Knight/34_head.png"),
	35: preload("res://src/img/player/Samurai/13_head_front.png"),
	36: preload("res://src/img/player/Unmasked Ninja/22_head_front.png"),
};

const head_down_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_head_down.png"),
	2: preload("res://src/img/player/Blue Knight/2_head_down.png"),
	3: preload("res://src/img/player/Red Knight/3_head_down.png"),
	4: preload("res://src/img/player/Orange Knight/4_head_down.png"),
	5: preload("res://src/img/player/Gray Knight/5_head_down.png"),
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
	23: preload("res://src/img/player/Open Faced Gray Knight/23_head_down.png"),
	24: preload("res://src/img/player/24_head_down.svg"),
	25: preload("res://src/img/player/25_head_down.svg"),
	26: preload("res://src/img/player/26_head_down.svg"),
	27: preload("res://src/img/player/27_head_down.svg"),
	28: preload("res://src/img/player/28_head_down.svg"),
	29: preload("res://src/img/player/Pink Knight/29_head_down.png"),
	30: preload("res://src/img/player/Blacksmith/30_head_down.png"),
	31: preload("res://src/img/player/31_head_down.svg"),
	32: preload("res://src/img/player/21_head_down.svg"),
	33: preload("res://src/img/player/Lime Knight/2_head_down.png"),
	34: preload("res://src/img/player/Cyan Knight/34_head_down.png"),
	35: preload("res://src/img/player/Samurai/13_head_down.png"),
	36: preload("res://src/img/player/Unmasked Ninja/22_head_down.png"),
};

const body_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_body.png"),
	2: preload("res://src/img/player/Blue Knight/2_body.png"),
	3: preload("res://src/img/player/Red Knight/3_body.png"),
	4: preload("res://src/img/player/Orange Knight/4_body.png"),
	5: preload("res://src/img/player/Gray Knight/5_body.png"),
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
	23: preload("res://src/img/player/Gray Knight/5_body.png"),
	24: preload("res://src/img/player/24_body.svg"),
	25: preload("res://src/img/player/25_body.svg"),
	26: preload("res://src/img/player/26_body.svg"),
	27: preload("res://src/img/player/Ninja/27_body.png"),
	28: preload("res://src/img/player/28_body.svg"),
	29: preload("res://src/img/player/Pink Knight/29_body.png"),
	30: preload("res://src/img/player/Blacksmith/30_body.png"),
	31: preload("res://src/img/player/31_body.svg"),
	32: preload("res://src/img/player/21_body.svg"),
	33: preload("res://src/img/player/Lime Knight/2_body.png"),
	34: preload("res://src/img/player/Cyan Knight/34_body.png"),
	35: preload("res://src/img/player/Samurai/13_body.png"),
	36: preload("res://src/img/player/Ninja/27_body.png"),
};

const body_side_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_body_side.png"),
	2: preload("res://src/img/player/Blue Knight/2_body_side.png"),
	3: preload("res://src/img/player/Red Knight/3_body_side.png"),
	4: preload("res://src/img/player/Orange Knight/4_body_side.png"),
	5: preload("res://src/img/player/Gray Knight/5_body_side.png"),
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
	23: preload("res://src/img/player/Gray Knight/5_body_side.png"),
	24: preload("res://src/img/player/24_body_side.svg"),
	25: preload("res://src/img/player/25_body_side.svg"),
	26: preload("res://src/img/player/26_body.svg"),
	27: preload("res://src/img/player/Ninja/27_body_side.png"),
	28: preload("res://src/img/player/28_body_side.svg"),
	29: preload("res://src/img/player/Pink Knight/29_body_side.png"),
	30: preload("res://src/img/player/Blacksmith/30_body_side.png"),
	31: preload("res://src/img/player/31_body_side.svg"),
	32: preload("res://src/img/player/21_body_side.svg"),
	33: preload("res://src/img/player/Lime Knight/2_body_side.png"),
	34: preload("res://src/img/player/Cyan Knight/34_body_side.png"),
	35: preload("res://src/img/player/Samurai/13_body_side.png"),
	36: preload("res://src/img/player/Ninja/27_body_side.png"),
};

const shield_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_shield.png"),
	2: preload("res://src/img/player/Blue Knight/2_shield.png"),
	3: preload("res://src/img/player/Red Knight/3_shield.png"),
	4: preload("res://src/img/player/Orange Knight/4_shield.png"),
	5: preload("res://src/img/player/Gray Knight/5_shield.png"),
	6: preload("res://src/img/player/6_shield.svg"),
	7: preload("res://src/img/player/7_shield.svg"),
	8: preload("res://src/img/player/8_shield.svg"),
	9: preload("res://src/img/player/9_shield.svg"),
	10: preload("res://src/img/player/10_shield.svg"),
	11: preload("res://src/img/player/11_shield.svg"),
	12: preload("res://src/img/player/12_shield.svg"),
	13: preload("res://src/img/player/Brute/13_shield.png"),
	14: preload("res://src/img/player/14_shield.svg"),
	15: preload("res://src/img/player/15_shield.svg"),
	16: preload("res://src/img/player/16_shield.svg"),
	17: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	18: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	19: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	20: preload("res://src/img/player/20_shield.svg"), # Check if it's the same used in CC
	21: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	22: preload("res://src/img/player/17_shield.svg"), # Check if it's the same used in CC
	23: preload("res://src/img/player/Gray Knight/5_shield.png"),
	24: preload("res://src/img/player/20_shield.svg"), # Check if it's the same used in CC
	25: preload("res://src/img/player/25_shield.svg"), # Check if it's the same used in CC
	26: preload("res://src/img/player/26_shield.svg"),
	27: preload("res://src/img/player/27_shield.svg"),
	28: preload("res://src/img/player/28_shield.svg"),
	29: preload("res://src/img/player/Pink Knight/29_shield.png"),
	30: preload("res://src/img/player/Blacksmith/30_shield.png"),
	31: preload("res://src/img/player/31_shield.svg"),
	32: preload("res://src/img/player/17_shield.svg"),
	33: preload("res://src/img/player/Lime Knight/2_shield.png"),
	34: preload("res://src/img/player/Cyan Knight/34_shield.png"),
	35: preload("res://src/img/player/Samurai/13_shield.png"),
	36: preload("res://src/img/player/Brute/13_shield.png"),
};

const shield_front_spritesheet = {
	0: preload("res://src/img/items/sandwich.svg"),
	1: preload("res://src/img/player/Green Knight/1_shield_front.png"),
	2: preload("res://src/img/player/Blue Knight/2_shield_front.png"),
	3: preload("res://src/img/player/Red Knight/3_shield_front.png"),
	4: preload("res://src/img/player/Orange Knight/4_shield_front.png"),
	5: preload("res://src/img/player/Gray Knight/5_shield_front.png"),
	6: preload("res://src/img/player/6_shield_front.svg"),
	7: preload("res://src/img/player/7_shield_front.svg"),
	8: preload("res://src/img/player/8_shield_front.svg"),
	9: preload("res://src/img/player/9_shield_front.svg"),
	10: preload("res://src/img/player/10_shield_front.svg"),
	11: preload("res://src/img/player/11_shield_front.svg"),
	12: preload("res://src/img/player/12_shield_front.svg"),
	13: preload("res://src/img/player/Brute/13_shield_front.png"),
	14: preload("res://src/img/player/14_shield_front.svg"),
	15: preload("res://src/img/player/15_shield_front.svg"),
	16: preload("res://src/img/player/16_shield_front.svg"),
	17: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	18: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	19: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	20: preload("res://src/img/player/20_shield_front.svg"), # Check if it's the same used in CC
	21: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	22: preload("res://src/img/player/17_shield_front.svg"), # Check if it's the same used in CC
	23: preload("res://src/img/player/Gray Knight/5_shield_front.png"),
	24: preload("res://src/img/player/20_shield_front.svg"), # Check if it's the same used in CC
	25: preload("res://src/img/player/25_shield_front.svg"), # Check if it's the same used in CC
	26: preload("res://src/img/player/26_shield_front.svg"),
	27: preload("res://src/img/player/27_shield_front.svg"),
	28: preload("res://src/img/player/28_shield_front.svg"),
	29: preload("res://src/img/player/Pink Knight/29_shield_front.png"),
	30: preload("res://src/img/player/Blacksmith/30_shield_front.png"),
	31: preload("res://src/img/player/31_shield_front.svg"),
	32: preload("res://src/img/player/17_shield_front.svg"),
	33: preload("res://src/img/player/Lime Knight/2_shield_front.png"),
	34: preload("res://src/img/player/Green Knight/1_shield_front.png"),
	35: preload("res://src/img/player/Samurai/13_shield_front.png"),
	36: preload("res://src/img/player/Brute/13_shield_front.png"),
};

const magic_color = {
	1: Color(0, 1, 0),
	2: Color(0, 0, 1),
	3: Color(1, 0, 0),
	4: Color(1, 0.65, 0),
	5: Color(0.75, 0.75, 0.75),
	23: Color(0.75, 0.75, 0.75),
	29: Color(1, 0.75, 0.8),
	30: Color(0.63, 0.13, 0.94),
	33: Color(0, 1, 0),
	34: Color(0, 1, 1),
};
