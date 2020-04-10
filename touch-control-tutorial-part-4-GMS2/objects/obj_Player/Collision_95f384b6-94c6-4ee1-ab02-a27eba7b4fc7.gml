/// @description Collision checks

//Set up vars
var a,xoff,yoff,om,mm,mag;

a = point_direction(x, y, other.x, other.y);    //Get the direction from the colliding object
xoff = lengthdir_x(1, a);                       //Get the offset vector
yoff = lengthdir_y(1, a);
om = other.mass / mass;                         //start the fake "physics mass" calculations
mm = mass / other.mass;
mag = sqrt((om * om) + (mm * mm));
om /= mag;
mm /= mag;

//Move out of collision
while (place_meeting(x, y, other.id))
{
x -= xoff * om; //Move the instance out of collision
y -= yoff * om;
other.x += xoff * mm; //Move the other instance out of the collision
other.y += yoff * mm;
}

//Check to see if we have collided with an enemy
switch (other.object_index)
{
//We use a switch so that we can add new enemies in as we wish
case obj_Enemy:
    if alarm[1] < 0
        {
        alarm[1] = room_speed / 2;                  //This alarm prevents a constant damage
        health -= other.dmg;                        //Remove health
        with (instance_create(x,y,obj_Decal))       //Create some blood!!!
            {
            audio_play_sound(choose(snd_Blood_1, snd_Blood_2, snd_Blood_3), 0, false);
            shadow = false;
            dist = 0;
            sprite_index = spr_Blood;
            image_speed = 0;
            image_xscale = 0.5 + random(0.5);
            image_yscale = 0.5 + random(0.5);
            speed = 0;
            image_angle = random(360)
            }
        }
    break;
}

