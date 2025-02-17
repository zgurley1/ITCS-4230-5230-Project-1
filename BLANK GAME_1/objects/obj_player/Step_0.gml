/// @description Insert description here
// You can write your code in this editor
if health <= 0 
{
	instance_destroy()
	return
}


var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var last_direction = ""


//right_key = keyboard_check(vk_right);
//left_key = keyboard_check(vk_left);
//up_key = keyboard_check(vk_up);
//down_key = keyboard_check(vk_down);

xspd = (right - left) * movespd;
yspd = (down - up) * movespd;


if(knockback = true) {
	var _x = lengthdir_x(1, knockback_dir);
	xspd = 0
	var _y = lengthdir_y(1, knockback_dir);
	yspd = 0
	
	if(!scr_collision_x(_x)) {
		x += _x;
	}
	
	if(!scr_collision_y(_y)) {
		y += _y;
	}
} else {
	if (scr_collision_x(xspd))
	{
		xspd = 0
	}

	if (scr_collision_y(yspd))
	{
		yspd = 0
	}
}

/*
if place_meeting(x + xspd, y, obj_wall) or place_meeting(x + xspd, y, obj_pit)
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) or place_meeting(x, y + yspd, obj_pit)
{
	yspd = 0;
}
*/
	
if (attack_timer == 0) {

	if up
	{
		sprite_index = spr_green_run_up
		// last_direction = "up"
	}
	else if down
	{
		sprite_index = spr_green_run_down
		// last_direction = "down"
	}
	else if left
	{
		sprite_index = spr_green_run_left
		// last_direction = "left"
	}
	else if right
	{
		sprite_index = spr_green_run_right
		// last_direction = "right"
	}
	else {
		if (sprite_index == spr_green_run_left) {
            sprite_index = spr_green_idle_left;
        } else if (sprite_index == spr_green_run_right) {
            sprite_index = spr_green_idle_right;
        } else if (sprite_index == spr_green_run_up) {
            sprite_index = spr_green_idle_up;
        } else if (sprite_index == spr_green_run_down) {
            sprite_index = spr_green_idle_down;
        }
	}
}

x += xspd;
y += yspd;

//Play walking sound if walking
if(xspd != 0  or yspd != 0) {
	if(!audio_is_playing(walk_sound)){
		audio_play_sound(walk_sound,0,false);
	} 
} else {
	if(audio_is_playing(walk_sound)) {
		audio_stop_sound(walk_sound);
	} 
}



if mouse_check_button_pressed(mb_left) && holding_bow && can_shoot
{
    //var arrow;
	//arrow = instance_create_layer(x, y, "Instances", obj_arrow); // Create the arrow at the player's position
	
	instance_create_layer(x, y, "Instances", obj_arrow); // Create the arrow at the player's position

	
	can_shoot = false
	alarm_set(0, shoot_speed) 
	
	//Play Bow Sound
	if(!audio_is_playing(bow_sound)){
		audio_play_sound(bow_sound,0,false,1,.3);
	}
}

if (mouse_check_button_pressed(mb_right) && attack_timer == 0) {
	
	if ((sprite_index == spr_green_run_down) || (sprite_index == spr_green_idle_down)) {
		sprite_index = spr_green_hit_down;  // Set attack sprite
		image_index = 0; 
		image_speed = 1;// Start animation from the beginning
		attack_timer = sprite_get_number(sprite_index) * 3;
		
		instance_create_layer(x,y, "Instances", obj_hitbox_down)
	}
	
	else if ((sprite_index == spr_green_run_left) || (sprite_index == spr_green_idle_left)) {
		sprite_index = spr_green_hit_left;  // Set attack sprite
		image_index = 0; 
		image_speed = 1;// Start animation from the beginning
		attack_timer = sprite_get_number(sprite_index) * 3; 
		
		instance_create_layer(x,y, "Instances", obj_hitbox_left)
	}
	
	else if ((sprite_index == spr_green_run_right) || (sprite_index == spr_green_idle_right)) {
		sprite_index = spr_green_hit_right;  // Set attack sprite
		image_index = 0; 
		image_speed = 1;// Start animation from the beginning
		attack_timer = sprite_get_number(sprite_index) * 3;
		
		instance_create_layer(x,y, "Instances", obj_hitbox_right)
	}
	
	else if ((sprite_index == spr_green_run_up) || (sprite_index == spr_green_idle_up)) {
		sprite_index = spr_green_hit_up;  // Set attack sprite
		image_index = 0; 
		image_speed = 1;// Start animation from the beginning
		attack_timer = sprite_get_number(sprite_index) * 3; 
		
		instance_create_layer(x,y, "Instances", obj_hitbox_up)
	}
	
	//Play Sword Sound
	var _pitchrandom = random_range(0.7,1.1);
	audio_play_sound(sword_sound,0,false,1,0,_pitchrandom);
}

// Attack timer countdown
if (attack_timer > 0) {
    attack_timer--;
    if (attack_timer == 0) {
       if ((sprite_index == spr_green_hit_left)) {
            sprite_index = spr_green_idle_left;
        } else if (sprite_index == spr_green_hit_right) {
            sprite_index = spr_green_idle_right;
        } else if (sprite_index == spr_green_hit_up) {
            sprite_index = spr_green_idle_up;
        } else if (sprite_index == spr_green_hit_down) {
            sprite_index = spr_green_idle_down;
        }
    }
}