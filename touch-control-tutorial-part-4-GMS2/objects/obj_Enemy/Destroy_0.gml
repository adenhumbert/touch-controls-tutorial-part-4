//Create some bones!
audio_play_sound(snd_Bones_Fall, 0, false);
repeat(round(image_xscale * 10))
{
with (instance_create(x, y, obj_Decal))
    {
    sprite_index = spr_Skeleton_Bones;
    image_index = irandom (image_number - 1);
    image_speed = 0;
    image_xscale = 0.5 + random(0.5);
    image_yscale = 0.5 + random(0.5);
    image_angle = random (360);
    speed = 2 + random(3);
    direction = (other.image_angle - 180) + 90 - random(180);
    }
}

