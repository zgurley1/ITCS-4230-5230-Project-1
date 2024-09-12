/// @description Insert description here
// You can write your code in this editor
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key - left_key) * movespd;
yspd = (down_key - up_key) * movespd;

if place_meeting(x + xspd, y, obj_wall) == true
{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall) == true
{
	yspd = 0;
}
	
if up_key
{
	sprite_index = spr_player_up
}
if down_key
{
	sprite_index = spr_player_down
}
if left_key
{
	sprite_index = spr_player_left
}
if right_key
{
	sprite_index = spr_player_right
}


x += xspd;
y += yspd;



if mouse_check_button_pressed(mb_left) && holding_bow
{
    var arrow;
	arrow = instance_create_layer(x, y, "Instances", obj_arrow); // Create the arrow at the player's position

	// Check player's sprite and set the arrow's direction
	if (sprite_index == spr_player_up) {
	    arrow.direction = 90; // Move upwards
		arrow.sprite_index = spr_arrow_up
	} else if (sprite_index == spr_player_down) {
	    arrow.direction = 270; // Move downwards
		arrow.sprite_index = spr_arrow_down
	} else if (sprite_index == spr_player_left) {
	    arrow.direction = 180; // Move left
		arrow.sprite_index = spr_arrow_left
	} else if (sprite_index == spr_player_right) {
	    arrow.direction = 0; // Move right
		arrow.sprite_index = spr_arrow_right
	}
}


function teleport()
{
    var x_offset = getXOffset();
    var y_offset = getYOffset();
    
    // Calculate the intended destination
    var target_x = obj_arrow.x + x_offset;
    var target_y = obj_arrow.y + y_offset;
    
    // Check if the target position is collision-free
    if (place_free(target_x, target_y))
    {
        // Move the player to the target position
        obj_player.x = target_x;
        obj_player.y = target_y;
    }
    else
    {
        // Attempt to find a nearby free position (if needed)
        findSafeTeleportPosition(target_x, target_y);
    }
}

function getXOffset()
{
	if (sprite_index == spr_player_left)
	{
		return 12;
	}
	else if (sprite_index == spr_player_right)
	{
		return -10;
	}
	return 0;
}
function getYOffset()
{
	if (sprite_index == spr_player_up)
	{
		return 12;
	}
	else if (sprite_index == spr_player_down)
	{
		return -10;
	}
	return 0;
}

function findSafeTeleportPosition(target_x, target_y)
{
    // Check nearby positions to find a safe teleport spot
    var safe_x = obj_player.x;
    var safe_y = obj_player.y;

    if (place_free(target_x + 10, target_y)) {
        safe_x = target_x + 10;
    } else if (place_free(target_x - 10, target_y)) {
        safe_x = target_x - 10;
    }
    
    if (place_free(target_x, target_y + 10)) {
        safe_y = target_y + 10;
    } else if (place_free(target_x, target_y - 10)) {
        safe_y = target_y - 10;
    }

    obj_player.x = safe_x;
    obj_player.y = safe_y;
}