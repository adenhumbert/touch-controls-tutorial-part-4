/// @description Shoot grenade
if g_shoot
{
with (instance_create(x, y, obj_Player_Granade))
    {
    direction = other.b_angle + 10 - random(20);
    speed = min(10, other.g_timer);
    spd = speed;
    }
g_shoot = false;
g_timer = 1;
alarm[2] = room_speed * 3;
}

