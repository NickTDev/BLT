//Moves the crate up when the up arrow is pressed
if (keyboard_check(vk_up))
{
	if (oCraneCrate2.y >= 396)
	{
		oCraneCrate2.y -= 1;
		oCraneRope2.y -= .5;
		oCraneRope2.image_yscale -= .032;
	}
}

//moves the crate down if the down arrow is pressed
if (keyboard_check(vk_down))
{
	if (oCraneCrate2.y <= 764)
	{
		oCraneCrate2.y += 1;
		oCraneRope2.y += .5;
		oCraneRope2.image_yscale += .032;
	}
}

//moves the crate left if the left arrow is pressed
if (keyboard_check(vk_left))
{
	if (oCraneCrate2.x >= 186)
	{
		oCraneCrate2.x -= 1;
		oCraneRope2.x -= 1;
	}
}

//moves the crate right if the right arrow is pressed
if (keyboard_check(vk_right))
{
	if (oCraneCrate2.x <= 354)
	{
	oCraneCrate2.x += 1;
	oCraneRope2.x += 1;
	}
}