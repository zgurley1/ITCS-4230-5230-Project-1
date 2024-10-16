/// @description Insert description here
// You can write your code in this editor

/*
// Check player's sprite and set the arrow's direction
	if (sprite_index == spr_green_run_up or sprite_index == spr_green_idle_up) {
	    arrow.direction = 90; // Move upwards
		arrow.sprite_index = spr_arrow_up
	} else if (sprite_index == spr_green_run_down or sprite_index == spr_green_idle_down) {
	    arrow.direction = 270; // Move downwards
		arrow.sprite_index = spr_arrow_down
	} else if (sprite_index == spr_green_run_left or sprite_index == spr_green_idle_left) {
	    arrow.direction = 180; // Move left
		arrow.sprite_index = spr_arrow_left
	} else if (sprite_index == spr_green_run_right or sprite_index == spr_green_idle_right) {
	    arrow.direction = 0; // Move right
		arrow.sprite_index = spr_arrow_right
	}


*/


if (obj_player.sprite_index == spr_green_idle_up or obj_player.sprite_index == spr_green_run_up) {
    direction = 90; // Move upwards
	sprite_index = spr_arrow_up
} else if (obj_player.sprite_index == spr_green_idle_down or obj_player.sprite_index == spr_green_run_down) {
    direction = 270; // Move downwards
	sprite_index = spr_arrow_down
} else if (obj_player.sprite_index == spr_green_idle_left or obj_player.sprite_index == spr_green_run_left) {
    direction = 180; // Move left
	sprite_index = spr_arrow_left
} else if (obj_player.sprite_index == spr_green_idle_right or obj_player.sprite_index == spr_green_run_right) {
    direction = 0; // Move right
	sprite_index = spr_arrow_right
}




speed = arrow_speed;