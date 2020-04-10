var xx, yy, dx, dy, instance, first_instance;

dx = 0;
dy = 0;

xx = x + lengthdir_x(500, dir);
yy = y + lengthdir_y(500, dir);

first_instance = collision_line(x, y, xx, yy, obj_Col_Parent, true, true);

if first_instance != noone
    {
    dx = xx - x;
    dy = yy - y;
    while (abs(dx) >= 1 || abs(dy) >= 1)
        {
        dx /= 2;
        dy /= 2;
        instance = collision_line(x, y, xx - dx, yy - dy, obj_Col_Parent, true, true);
        if (instance != noone)
            {
            first_instance = instance;
            xx -= dx;
            yy -= dy;
            }
        }
    }
cx = xx - dx;
cy = yy - (dy * 2);
if first_instance != noone
    {
    if first_instance.object_index != obj_Wall
        {
        switch (first_instance.object_index)
            {
            case obj_Enemy: audio_play_sound(snd_Bones, 0, false); break;
            case obj_Explosive:
                with (first_instance)
                    {
                    audio_play_sound(snd_Barrel_Hit, 0, false);
                    motion_add(point_direction(other.x, other.y, xx, yy), 2);
                    }
                break;
            }
        with (first_instance)
            {
            hp -= other.dmg;
            if hp<=0 instance_destroy();
            }
        }
    else
        {
        audio_play_sound(snd_Ricochet, 0, false);
        }
    }
image_xscale = point_distance(x, y, cx, cy) / 256;

