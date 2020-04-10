/// @description Room loop

//prevent the player from leaving the room.
if x < 0
{
x += room_width
}
else
{
if x > room_width x -= room_width;
}

if y < 0
{
y += room_height
}
else
{
if y > room_height y -= room_height;
}

