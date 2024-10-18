// Get the camera position for the active view (0 in this case)
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

// Set the color for the rectangle
draw_set_color(c_ltgrey);

// Draw the rectangle outline for the scoreboard in the viewport
draw_rectangle(camera_x + 2 , camera_y + 2, camera_x + 100, camera_y + 12, false);

// Set the color for the text (e.g., black)
draw_set_color(c_black);
draw_set_font(fnt_scoreboard)

// Set horizontal alignment for the text
draw_set_halign(fa_left);

// Draw the score text inside the rectangle (adjusted for camera)
draw_text(camera_x + 2, camera_y + 2, "Score: " + string(score));

// Reset the color back to white (optional, for other drawing operations)
draw_set_color(c_white);

draw_healthbar(camera_x + 150, camera_y + 2, camera_x + 286, camera_y + 12, health, c_ltgrey, c_red, c_green,1, true, true)