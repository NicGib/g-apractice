/// @description Insert description here
// You can write your code in this editor
/*if(keyboard_check(vk_up)){
	y -= speed_;
}
if(keyboard_check(vk_down)){
	y += speed_;
}
if(keyboard_check(vk_left)){
	x -= speed_;
}
if(keyboard_check(vk_right)){
	x += speed_;
}*/

var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _action = keyboard_check_pressed(vk_space)

var _direction = point_direction(0,0,_x_input,_y_input);

var _move_x = lengthdir_x(speed_,_direction)
var _move_y = lengthdir_y(speed_,_direction)

if(_action){
	instance_create_layer(x,y,"Instances",obj_wall);
}

if(_x_input != 0 || _y_input != 0){
	if(!place_meeting(x + _move_x,y + _move_y,obj_wall)){
		x += _move_x;
		y += _move_y;		
	}else{
		while(place_meeting(x+sign(_move_x),y+sign(_move_y),obj_wall)){
			x += sign(_move_x)
			y += sign(_move_y)
		}
	}
}