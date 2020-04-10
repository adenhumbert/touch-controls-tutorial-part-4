//Attack the player!
if go
{
mp_potential_step(global.Player_x, global.Player_y, spd, false);
}

//Set up the image angle to rotate smoothly.
//Remove this and see what happens!!!
var dd,ts;
dd = ((((point_direction(x, y, global.Player_x, global.Player_y) - image_angle) mod 360) + 540) mod 360) - 180;
image_angle += min(abs(dd), 5) * sign(dd);  


