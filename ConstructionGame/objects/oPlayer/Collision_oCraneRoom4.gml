//Moves the crate up when the up arrow is pressed
if (keyboard_check(vk_up))
{
	if (oCraneCrate4.y >= 632) 
	{
		oCraneCrate4.y -= 1;
		oCraneRope4.y -= .5;
		oCraneRope4.image_yscale -= .032;
	}
}

//moves the crate down if the down arrow is pressed
if (keyboard_check(vk_down))
{
	if (oCraneCrate4.y <= 975)
	{
		oCraneCrate4.y += 1;
		oCraneRope4.y += .5;
		oCraneRope4.image_yscale += .032;
	}
}

//moves the crate left if the left arrow is pressed
if (keyboard_check(vk_left))
{
	if (oCraneCrate4.x >= 30)
	{
	oCraneCrate4.x -= 1;
	oCraneRope4.x -= 1;
	}
}

//moves the crate right if the right arrow is pressed
if (keyboard_check(vk_right))
{
	if (oCraneCrate4.x <= 100)
	{
		oCraneCrate4.x += 1;
		oCraneRope4.x += 1;
	}
}