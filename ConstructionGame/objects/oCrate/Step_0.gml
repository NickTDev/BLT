//Apply gravity when in the air
if (!place_meeting(x, y + 1, oGround))
{
    gravity = 0.05;
}
else
{
	vspeed = 0;
    gravity = 0;
}

//Moves if the player collides on either side
if (collision_circle(x+1,y,15,oPlayer,false,true))
{
	x = x - 2;
}

if (collision_circle(x-1,y,16,oPlayer,false,true))
{
	x = x + 2;
}

//Stops when hitting the wall
if (collision_circle(x+1,y,15,oWall,false,true))
{
	x = x - 2;
	oPlayer.x = oPlayer.x - 2;
}
else if (collision_circle(x-1,y,15,oWall,false,true))
{
	x = x + 2;
	oPlayer.x = oPlayer.x + 2;
}

if (gravity > 0) && (place_meeting(x,y-1,oPlayer))
{
	instance_create_layer(oPlayer.x,oPlayer.y,"Player",oPlayerDead);
	instance_destroy(oPlayer);
	instance_destroy();
}