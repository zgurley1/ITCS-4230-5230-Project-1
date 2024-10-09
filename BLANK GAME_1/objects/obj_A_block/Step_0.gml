/// @description Insert description here
// You can write your code in this editor

if (obj_lever.a_block) {
    // Activate A blocks and deactivate B blocks
    with (obj_A_block) {
        visible = true;
        solid = true;
    }
    with (obj_B_block) {
        visible = false;
        solid = false;
    }
} else {
    // Activate B blocks and deactivate A blocks
    with (obj_A_block) {
        visible = false;
        solid = false;
    }
    with (obj_B_block) {
        visible = true;
        solid = true;
    }
}