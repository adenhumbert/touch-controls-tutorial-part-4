/// @description Player Movement
if go
{
var i, move_check, h_spd, v_spd;
//Base speed vars
h_spd = 0;
v_spd = 0;
//Check keys
/*if keyboard_check(global.Up) v_spd -= spd;
if keyboard_check(global.Down) v_spd += spd;
if keyboard_check(global.Right) h_spd += spd;
if keyboard_check(global.Left) h_spd -= spd;*/

//

stick_x[0] = gui_x[0];
stick_y[0] = gui_y[0];
if st_pressed[0] = -1
   {
   for (i = 0; i < 5; i++;)
      {
      if device_mouse_check_button(i, mb_left)
         {
         var tx, ty;
         tx = scr_mouse_gui_x(device_mouse_raw_x(i));
         ty = scr_mouse_gui_y(device_mouse_raw_y(i));
         if point_distance(tx, ty, gui_x[0], gui_y[0]) < st_radius
            {
            if st_pressed[1] != i {
               st_pressed[0] = i;
               break;
			   
               }

			}
         }
		
      }
			  vdist = min(st_radius, point_distance(mx, my, gui_x[0], gui_y[0]));
   vdir = point_direction(gui_x[0], gui_y[0], mx, my);
   spd = min(b_spd, vdist / 10);
   h_spd = lengthdir_x(spd, vdir);
   v_spd = lengthdir_y(spd, vdir);
   stick_x[0] = gui_x[0] + lengthdir_x(vdist, vdir);
   stick_y[0] = gui_y[0] + lengthdir_y(vdist, vdir);
   }
else st_pressed[0] = -1

   

//

if device_mouse_check_button(st_pressed[0], mb_left)
   {
   var spd, vdist, mx, my;
   mx = scr_mouse_gui_x(device_mouse_raw_x(st_pressed[0]));
   my = scr_mouse_gui_y(device_mouse_raw_y(st_pressed[0]));
//Now move the instance "virtually" while checking for collisions
//First the horizontal check
for (i = abs(h_spd); i > 0; i -= 1;)
    {
    move_check = sign(h_spd) * i;
    if !place_meeting(x + move_check, y, obj_Wall) {x += move_check; break;} //no collision on full speed so break the loop and move the instance
    if !place_meeting(x + move_check, y - i, obj_Wall) y -= (i / 2);
    if !place_meeting(x + move_check, y + i, obj_Wall) y += (i / 2);  
    }
//The vertical check
for (i = abs(v_spd); i > 0; i -= 1;)
    {
    move_check = sign(v_spd) * i;
    if !place_meeting(x , y + move_check, obj_Wall) {y += move_check; break;}//no collision on full speed so break the loop and move the instance
    if !place_meeting(x - i,y + move_check, obj_Wall) x -= (i / 2);
    if !place_meeting(x + i,y + move_check, obj_Wall) x += (i / 2);
    }
//If we are moving, animate the legs and make footsteps...
if x = xprevious && y = yprevious
    {
    //Stop animating the legs and stop footsteps
    f_index = 0;
    if !s_play audio_stop_sound(snd_Footsteps);
    s_play = true;
    }
else
    {
    //Animate the legs manually
    f_index += f_spd;
    if f_index > 6.5 f_index = -0.5;
    if s_play
        {
        //Loop footsteps
        audio_play_sound(snd_Footsteps, 0, true);
        s_play = false;
        }
    }
	
	
stick_x[1] = gui_x[1]
stick_x[1] = gui_x[1]
if st_pressed[1] = -1
   {
   for (i = 0; i < 5; i++;)
      {
      if device_mouse_check_button(i, mb_left)
         {
         var tx, ty;
         tx = scr_mouse_gui_x(device_mouse_raw_x(i));
         ty = scr_mouse_gui_y(device_mouse_raw_y(i));
         if point_distance(tx, ty, gui_x[1], gui_y[1]) < st_radius
            {
            if st_pressed[0] != i                {
               st_pressed[1] = i;
               break;
               }             }
         }
      }
   }
	

if device_mouse_check_button(st_pressed[1], mb_left)
   {
   var mx, my;
   mx = scr_mouse_gui_x(device_mouse_raw_x(st_pressed[1]));
   my = scr_mouse_gui_y(device_mouse_raw_y(st_pressed[1]));
   vdist = min(st_radius, point_distance(mx, my, gui_x[1], gui_y[1]));
   vdir = point_direction(gui_x[1], gui_y[1], mx, my);
   stick_x[1] = gui_x[1] + lengthdir_x(vdist, vdir);
   stick_y[1] = gui_y[1] + lengthdir_y(vdist, vdir);
   //Check for the shooting variable
    if c_shoot
        {
        //Setup vars
        var xx, yy, mod_dif;
        c_shoot=false;                                          //Set shoot var to false
        alarm[0] = room_speed / 3;                              //Set shoot alarm
        audio_play_sound(snd_GunShoot_Pistol, 0, false);        //Play shot sound
        mod_dif = b_angle + 3 - random(6);                      //Set the random angle for bullet variation
        xx = x + lengthdir_x(20, mod_dif);                      //get the x/y position to create the bullet
        yy = y + lengthdir_y(20, mod_dif);
        instance_create(xx, yy, obj_Flash);                     //Create the muzzle flash
        with (instance_create(xx,yy,obj_Player_Bullet))         //create the bullet
            {
            dir = mod_dif;                                      //Set the bullet directiom
            }
        //Now we will create the bullet casing as a nice special effect
        with (instance_create(x + lengthdir_x(18, b_angle), y + lengthdir_y(18, b_angle), obj_Casing))
            {
            image_index = 0;
            direction = (other.b_angle + 90) - 15 + random(30);
            image_angle = direction - 90;
            }
        }
    }
   }
else st_pressed[1] = -1;
//Check for mouse button shooting
if mouse_check_button(mb_left)
    {
 
//make character point towards mouse
var dd,ts;
dd = ((((vdir - h_angle) mod 360) + 540) mod 360) - 180; //get the head rotation
h_angle += min(abs(dd), 10) * sign(dd);  
dd = ((((h_angle - b_angle) mod 360) + 540) mod 360) - 180; // Get the body rotation
ts = abs(dd) / 6;
if abs(dd) < ts b_angle = h_angle else b_angle += sign(dd) * ts;
}

//Update the player position for the AI
global.Player_x=x;
global.Player_y=y;


}
