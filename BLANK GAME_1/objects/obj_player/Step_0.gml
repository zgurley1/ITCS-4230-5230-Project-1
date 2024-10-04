/// @description Insert description here
// You can write your code in this editor

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

if place_meeting(x + xspd, y, obj_wall) == true or place_meeting(x + xspd, y, obj_pit) == true
	and (obj_ab_wall.collides == false or !place_meeting(x + xspd, y, obj_ab_wall) == true)
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) == true or place_meeting(x, y + yspd, obj_pit) == true
	and (obj_ab_wall.collides == false or !place_meeting(x, y + yspd, obj_ab_wall) == true)
{
	yspd = 0;
}
	
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



if mouse_check_button_pressed(mb_left) && holding_bow && not instance_exists(obj_arrow)
{
    var arrow;
	arrow = instance_create_layer(x, y, "Instances", obj_arrow); // Create the arrow at the player's position

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

