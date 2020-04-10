//Setup base vars

dist = 2;                                               //Shadow distance
shadow = true;                                          //Shadow yes/no
turn = choose(3, 2, 1, -1, -2, -3) * 2;                 //Amount to spin if moving
image_xscale = 1;                                       //Base scales
image_yscale = 1;
alarm[0] = (room_speed * 2) + random(room_speed * 3);   //Fade alarm
alarm[2] = 10;                                          //Sound effect alarm
image_speed = 0;                                        //Stop animating
friction = 0.2;                                         //friction to stop movement

