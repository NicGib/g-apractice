/// @description Insert description here
// You can write your code in this editor


var _direction = point_direction(0,0,x_,y_);
var _speed = 10;

var _move_x = lengthdir_x(_speed,_direction)
var _move_y = lengthdir_y(_speed,_direction)


//if(!place_meeting(x + _move_x,y + _move_y,obj_wall)){
///*	x += _move_x;
//	y += _move_y;
//	*/	

//}else{
	if(place_meeting(x+sign(_move_x),y+sign(_move_y),obj_wall)){
		x_ = -x_;
		x += x_;
	}
//}
	x += x_;
	y += y_;