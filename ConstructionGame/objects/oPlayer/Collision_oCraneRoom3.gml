//Moves the crate up when the up arrow is pressed
if (keyboard_check(vk_up))
{
	if (oCraneCrate3.y >= 126)
	{
	oCraneCrate3.y -= 1;
	oCraneRope3.y -= .5;
	oCraneRope3.image_yscale -= .032;
	}
}

//moves the crate down if the down arrow is pressed
if (keyboard_check(vk_down))
{
	if (oCraneCrate3.y <= 340)
	{
	oCraneCrate3.y += 1;
	oCraneRope3.y += .5;
	oCraneRope3.image_yscale += .032;
	}
}

//moves the crate left if the left arrow is pressed
if (keyboard_check(vk_left))
{
	if (oCraneCrate3.x >= 48)
	{
	oCraneCrate3.x -= 1;
	oCraneRope3.x -= 1;
	}
}

//moves the crate right if the right arrow is pressed
if (keyboard_check(vk_right))
{
	if (oCraneCrate3.x <= 228)
	{
	oCraneCrate3.x += 1;
	oCraneRope3.x += 1;
	}
}