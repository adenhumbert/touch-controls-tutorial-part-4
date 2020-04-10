//Prepare the player sprites
image_speed=0;
image_angle=random(360);

//Set AI target variables
global.Player_x=x;
global.Player_y=y;

//Set up control vars for player object

go=true;                //For controlling when the player can use the player
spd=3;                  //movement speed
mass=700;               //Mass
f_index=0;              //For the legs animation
f_spd=0.15;             //Animation speed
b_angle=image_angle;    //Body image angle
h_angle=image_angle;    //Head image angle
s_play=true;            //Footsteps sound controller
c_shoot=true;           //Shoot controller
g_shoot = true;         //Grenade controller
timer = room_speed / 4; //Shoot timer (length between shots
g_timer = 0;            //Control grenade distance

health = 100;           //player hp

//Set the view to follow the player
/*view_object[0] = id;
view_hborder[0] = view_wview[0] / 2;
view_vborder[0] = view_hview[0] / 2;

/* */
/*  */
gui_x[0] = 64; gui_y[0] = (display_get_gui_height() - 64); 
gui_x[1] = (display_get_gui_width() - 64); gui_y[1] = (display_get_gui_height() - 64); 
stick_x[0] = gui_x[0]; stick_y[0] = gui_y[0];
stick_x[1] = gui_x[1]; stick_y[1] = gui_y[1];
st_pressed[0] = -1; st_pressed[1] = -1;
st_radius = 40; vdir = 0;