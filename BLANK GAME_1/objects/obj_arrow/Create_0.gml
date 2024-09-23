/// @description Insert description here
// You can write your code in this editor



if (obj_player.sprite_index == spr_player_up) {
    obj_arrow.direction = 90; // Move upwards
} else if (obj_player.sprite_index == spr_player_down) {
    obj_arrow.direction = 270; // Move downwards
} else if (obj_player.sprite_index == spr_player_left) {
    obj_arrow.direction = 180; // Move left
} else if (obj_player.sprite_index == spr_player_right) {
    obj_arrow.direction = 0; // Move right
}




speed = arrow_speed;