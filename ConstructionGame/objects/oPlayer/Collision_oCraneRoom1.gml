//Moves the crate up when the up arrow is pressed
if (keyboard_check(vk_up))
{
	if (oCraneCrate1.y >= 921) 
	{
		oCraneCrate1.y -= 1;
		oCraneRope1.y -= .5;
		oCraneRope1.image_yscale -= .032;
	}
}

//moves the crate down if the down arrow is pressed
if (keyboard_check(vk_down))
{
	if (oCraneCrate1.y <= 964)
	{
		oCraneCrate1.y += 1;
		oCraneRope1.y += .5;
		oCraneRope1.image_yscale += .032;
	}
}

//moves the crate left if the left arrow is pressed
if (keyboard_check(vk_left))
{
	if (oCraneCrate1.x >= 186)
	{
	oCraneCrate1.x -= 1;
	oCraneRope1.x -= 1;
	}
}

//moves the crate right if the right arrow is pressed
if (keyboard_check(vk_right))
{
	if (oCraneCrate1.x <= 350)
	{
		oCraneCrate1.x += 1;
		oCraneRope1.x += 1;
	}
}