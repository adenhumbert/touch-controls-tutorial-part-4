//This is a child of the Decal object
event_inherited();

//Now over-ride some of the parent settings
speed = (2 + random(2));                        //Set the speed
friction = 0.1;                                 //Change the friction
dist = 1;                                       //Less of a shadow
turn = choose(10, 8, 6, 4, -4, -6, -8, -10);    //faster turn speed
alarm[0] = room_speed;                          //Fade alarm                
alarm[2] = speed * 3;                           //Sound effect alarm
image_speed = 0;                                //Don't animate

