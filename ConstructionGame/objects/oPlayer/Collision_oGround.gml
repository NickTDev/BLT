 -= 1;

if (vspeed >= 5)
{
	instance_create_layer(x,y,"Instances",oPlayerDead);
	instance_destroy();
}