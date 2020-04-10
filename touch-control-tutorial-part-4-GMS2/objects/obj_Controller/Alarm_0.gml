//Create the enemy outside of the room
if instance_number(obj_Enemy) < 3
{
repeat(1 + level)
    {
    instance_create(-16 - random(64), (room_height / 2) - 80 + random(160), obj_Enemy);
    instance_create(room_width + 64 + random(64), (room_height / 2) - 80 + random(160), obj_Enemy);
    instance_create((room_width / 2) - 64 + random(128), -16 - random(64), obj_Enemy);
    instance_create((room_height / 2) - 64 + random(128), room_height + 16 + random(64), obj_Enemy); 
    }
level += 1;
}

//Reset the alarm!
alarm[0] = room_speed;


