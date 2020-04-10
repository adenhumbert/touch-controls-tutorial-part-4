//Play sound
audio_play_sound(snd_Explosion_Grenade, 0, false);

//Create explosion
instance_create(x, y, obj_Explosion);

//Create a crater decal
with (instance_create(x,y,obj_Decal))
    {
    shadow = false;
    dist = 0;
    sprite_index = spr_Crater;
    image_xscale = 0.5 + random(0.5);
    image_yscale = image_xscale;
    speed = 0;
    }


//Check and see if the explosion is going to damage any enemies
with (obj_Enemy)
{
if collision_circle(other.x, other.y, 64, id, false, false)
    {
    instance_destroy();
    }
}

//Check for chain reactions!
with (obj_Explosive)
{
if collision_circle(other.x, other.y, 64, id, false, false)
    {
    alarm[0] = point_distance(x, y, other.x, other.y);
    }
}

