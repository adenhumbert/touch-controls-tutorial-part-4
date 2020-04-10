//Play sound
audio_play_sound(snd_Explosion_Huge, 0, false);

//Create crater decal
with (instance_create(x,y,obj_Decal))
{
shadow=false;                       //No shadow
dist=0;                             //No distance
sprite_index=spr_Crater;            //Set sprite
image_xscale=0.75+random(0.5);      //Vary the size
image_yscale=image_xscale;
speed=0;                            //No speed
}

//Create explosion effect
instance_create(x,y,obj_Explosion);


//Check and see if the explosion is going to damage any enemies
with (obj_Enemy)
{
if collision_circle(other.x, other.y, 64, id, false, false)
    {
    instance_destroy();
    }
}

//Check for chain reactions!
with (object_index)
{
if id != other.id
    {
    if collision_circle(other.x, other.y, 64, id, false, false)
        {
        alarm[0] = point_distance(x, y, other.x, other.y);
        }
    }
}



