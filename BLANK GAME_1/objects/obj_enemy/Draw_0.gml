/// @description Insert description here
// You can write your code in this editor
// Call the default draw function so the enemy is still drawn
draw_self();

// Define the radius for checking if the player is in range
var chase_radius = attack_distance;

// Set the color of the circle (optional)
draw_set_color(c_red);

// Draw the circle around the enemy, using the radius
draw_circle(x, y, chase_radius, true);

// Reset the draw color (optional but good practice)
draw_set_color(c_white);