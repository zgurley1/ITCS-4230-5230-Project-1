/// @description Insert description here
// You can write your code in this editor
obj_player.health = 100;
xspd = 0;
yspd = 0;
attack_timer = 0;

knockback = false;
invincible = false;

knockback_dir = 0;

//holding_bow = false;
_uniColor = shader_get_uniform(shdrColorOverlay, "u_colour");
_color    = [1.0, 1.0, 0.0, 1.0];