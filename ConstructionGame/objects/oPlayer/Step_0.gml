//Get Keyboard Input
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
jump = keyboard_check_pressed(vk_space);
playerRoom = 0;

//Calculate Player Movement
hsp = (right - left) * moveSpeed;

//Apply Gravity
vsp += grv;

//Sound Cycle - platforms
if ((left) || (right)) && (place_meeting(x,y+1,oGround) || place_meeting(x,y+1,oWall))
{
	if !audio_is_playing(Footstep_Platform)
	{
		audio_play_sound(Footstep_Platform,0,0);
	}
}

if ((up) || (down)) && (ladder)
{
	if !audio_is_playing(Footstep_Ladder)
	{
		audio_play_sound(Footstep_Ladder,0,0);
	}
}

//If on an object and pressing jump key, jump
if (place_meeting(x,y+1,oCollider) || place_meeting(x,y+1,oLadder)) && (jump)
{
	vsp = -7;
	audio_play_sound(Jump,10,0);
}
//if (place_meeting(x,y+1,oWall)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oCrate)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oCraneCrate1)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oCraneCrate2)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oCraneCrate3)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oCraneCrate4)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oLadder)) && (jump)
//{
//	vsp = -7;
//}
//if (place_meeting(x,y+1,oMattress)) && (jump)
//{
//	vsp = -7;
//}

//Horizontal Collision Check
if(place_meeting(x+hsp,y,oCollider))
{
	while(!place_meeting(x+sign(hsp),y,oCollider))
	{
		x += sign(hsp);
	}
	hsp = 0;
}



//Move the player horizontally
x += hsp;

//Check for ladder
if (up || down)
{
	if place_meeting(x,y,oLadder) ladder = true;
}

//Use ladder movement if on ladder
if (ladder)
{
	vsp = 0;
	if (up) vsp = -2;
	if (down) vsp = 2;
	if !place_meeting(x,y,oLadder) ladder = false;
	if (jump) ladder = false;
}

//Check vertical collision
if (place_meeting(x,y+vsp,oCollider))
{
	while (!place_meeting(x,y+sign(vsp),oCollider))
	{
		y += sign(vsp);
	}
	if (place_meeting(x,y+vsp,oCollider) && (vsp > 10))
	{
		if !place_meeting(x,y+vsp,oMattress)
		{
			instance_create_layer(x,y,"Player",oPlayerDead);
		
			instance_destroy();	
		}
		else
		{
			audio_play_sound(Mattress_Hit,0,0);
		}
	}
	vsp = 0;
	
	
}


y += vsp;

/*
//Apply gravity when in the air
if (place_meeting(x, y + 1, oGround))
{
    vspeed = 0;
    gravity = 0;
}
if (place_meeting(x, y + 1, oWall))
{
    vspeed = 0;
    gravity = 0;
}
else if (place_meeting(x,y+1,oCrate))
{
	vspeed = 0;
    gravity = 0;
}
else if (place_meeting(x,y,oLadder))
{
	vspeed = 0;
	gravity = 0;
}
else if (place_meeting(x,y,oCraneCrate1))
{
	vspeed = 0;
	gravity = 0;
}
else if (place_meeting(x,y,oMattress))
{
	vspeed = 0;
	gravity = 0;
}
else 
{
	gravity = 0.05;
}
   
//Jump if on the ground, crate, or ladder
if (place_meeting(x,y+1,oGround))
{
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = -3;
	}
}

if (place_meeting(x,y+1,oWall))
{
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = -3;
	}
}

if (place_meeting(x,y+1,oCrate))
{
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = -3;
	}
}

if (place_meeting(x,y+1,oLadder))
{
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = -3;
	}
}

if (place_meeting(x,y+1,oCraneCrate1))
{
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = -3;
	}
}

if (place_meeting(x,y+1,oMattress))
{
	if (keyboard_check_pressed(vk_space))
	{
		vspeed = -3;
	}
}

//Exits from bottom of CraneCrate
if (place_meeting(x,y-1,oCraneCrate1))
{
	y = y + 1;
}

*/

//Animation
if (ladder)
{
	sprite_index = KevinLadderClimb;
}
else if (left)
{
	sprite_index = jumpLeft;
}
else if (right)
{
	sprite_index = jumpRight;
}
else 
{
	sprite_index = KevinIdle;
}

//Background Parallax
var _cam_y = camera_get_view_y(view_camera[0]) ;
layer_y("Background", _cam_y * 0.15); 