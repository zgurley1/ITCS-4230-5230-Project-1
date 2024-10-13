/// @description Start Fireballs on Path moving (one by one)
with(global.fireball_array[counter]){
	path_speed = 5;
}

counter++;

if(counter >= array_length(global.fireball_array)) {
	counter = 0;
}

alarm[0] = fireball_delay;