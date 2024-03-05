if path_position=1 && distance_to_object(oPlayer)<220
{
	audio_play_sound(Rubble_Crash,10,0);
	instance_create_layer(x,y,"Explosions",oExplosion);
}