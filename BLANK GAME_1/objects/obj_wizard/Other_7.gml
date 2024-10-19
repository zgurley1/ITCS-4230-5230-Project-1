/// @description Destroy if death animation ends
if(sprite_index == spr_wizard_death) {
	show_message("DEAD!");
	instance_destroy();
} else if (sprite_index == spr_wizard_take_hit) {
		sprite_index = spr_wizard_idle;
}

