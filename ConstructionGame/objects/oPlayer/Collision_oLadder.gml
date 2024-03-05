if (up)
{
	y = y - 1;
}

if (down)
{
	y = y + 1;
}

if (vspeed >= 5)
{
	instance_create_layer(x,y,"Instances",oPlayerDead);
	instance_destroy();
}