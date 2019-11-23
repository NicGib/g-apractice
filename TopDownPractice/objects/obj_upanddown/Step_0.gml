/// @description Insert description here
// You can write your code in this editor

var _up_or_down = 0;
var _direction_up = point_direction(0,0,0,-1);
var _direction_down = point_direction(0,0,0,1);

var _move_up = lengthdir_y(speed_updown_, _direction_up);
var _move_down = lengthdir_y(speed_updown_,_direction_down);


//trial one
if (_up_or_down == 0){
	if (!place_meeting(x, y+_move_up, obj_wall)){
		//while(!place_meeting(x, y+_move_up, obj_wall)){
		//	//y+=speed_updown_;	
		//	y+= -1
		//}
		y+= -1
	
	} else {
		_up_or_down = 1;	
	}
}

if(_up_or_down == 1){
	

	if(!place_meeting(x,y+_move_down, obj_wall)){
		//while(!place_meeting(x, y+_move_down, obj_wall)){
		////y=y-speed_updown_;
		//y+=1
		//}
	
		y+=1
	} else {
		_up_or_down = 0;
}
}


//trial two
	//if (!place_meeting(x, y+_move_up, obj_wall)){
		
	//	y+= -1
	
	//} else if(!place_meeting(x,y+_move_down, obj_wall)){

	//	y+=1
	//} 
