/// @description Spawn barrels

//Check how many barrels exist
if instance_number(obj_Explosive) < 10
{
var xx, yy;
//Set sprite for place meeting checks
sprite_index = spr_Barrel;
//Set random coords
xx = 128 + random(room_width - 256);
yy = 128 + random(room_height - 256);
//Check random coords for collisions
while (place_meeting(xx, yy, obj_Col_Parent) || place_meeting(xx, yy, obj_Player))
    {
    //re-roll random coords
    xx = 128 + random(room_width - 256);
    yy = 128 + random(room_height - 256);
    }
//create barrel
instance_create(xx, yy, obj_Explosive);
//Create spawn effect
with (instance_create(xx, yy, obj_Explosion))
    {
    image_xscale = 0.5;
    image_yscale = 0.5;
    image_blend = c_red;
    }
//Play sound
audio_play_sound(snd_Barrel_Spawn, 0, false);
//reset sprite index
sprite_index = -1;
}

//restart alarm
alarm[1] = room_speed * 10;

