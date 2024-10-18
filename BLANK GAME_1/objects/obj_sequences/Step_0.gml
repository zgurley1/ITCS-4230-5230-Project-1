/// @description Insert description here
// You can write your code in this editor


if room == Room_Title {
	
	if keyboard_check_pressed(vk_space){
	
		var arr = layer_get_all_elements("Assets_title")
	
		var eid = arr[0]
	
		if layer_sequence_is_finished(eid){
			
			room_goto(Room5)
		}	
	
	
	}
	
	
} else if room == Room_Lose or room == Room_Win {
	
	if keyboard_check_pressed(ord("R")){
	
		var arr = layer_get_all_elements("Assets_title")
	
		var eid = arr[0]
	
		if layer_sequence_is_finished(eid){
			
			room_goto(Room1)
		}	
			
	}

}


if room == Room_Lose or room == Room_Win {
	
	if keyboard_check_pressed(ord("E")){
	
		var arr = layer_get_all_elements("Assets_title")
	
		var eid = arr[0]
	
		if layer_sequence_is_finished(eid){
			
			game_end()
		}	
			
	}

}