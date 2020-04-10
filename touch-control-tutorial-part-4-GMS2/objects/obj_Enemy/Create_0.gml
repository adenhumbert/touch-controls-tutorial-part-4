//Setup Variables

//Internals
alarm[0] = 1 + random(room_speed);      //Start alarm for attacking player
image_speed = 0.2;                      //Image speed
image_xscale = 0.6 + random(0.4);       //Set a random scale to add variety
image_yscale = image_xscale;            //Set the yscale to match

//Special vars
mass = sprite_width * sprite_height;    //Fake "mass" for collisions
go = false;                             //Controller
spd = 0.5 + random(1);                  //Movement speed
hp = (image_xscale * 4);                //Health points
dmg = floor(image_xscale * 5);          //Damage the enemy does to the player

//Check where the enemy has been created and get the points 
//of entrance into the room for it..
if x < 0
{
xx = 32;
yy = room_height / 2;
}
else
{
if x > room_width
    {
    xx = room_width - 32;
    yy = room_height / 2;
    }
}

if y < 0
{
xx = room_width / 2;
yy = 32;
}
else
{
if y > room_height
    {
    xx = room_width / 2;
    yy = room_height - 32;
    }
}



