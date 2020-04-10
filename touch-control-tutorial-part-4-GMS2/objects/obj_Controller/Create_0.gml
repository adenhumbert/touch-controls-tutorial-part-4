level = 0;

alarm[0] = 1;
alarm[1] = room_speed * 10;

//Pinch Zoom Vars
pinch = true;                   //pinch controller
initial_w = __view_get( e__VW.WView, 0 );      //Initial view width/height
initial_h = __view_get( e__VW.HView, 0 );
v_scale = 1;                 //Current scale value
v_dist = 0;                  //Distance bewteen the two touches
v_ang_prev = 0;
v_ang_now = 0;


key_left = virtual_key_add(32, display_get_gui_height() - 160, 64, 64, vk_left);
key_up = virtual_key_add(96, display_get_gui_height() - 224, 64, 64, vk_up);
key_down = virtual_key_add(96, display_get_gui_height() - 96, 64, 64, vk_down);
key_right = virtual_key_add(160, display_get_gui_height() - 160, 64, 64, vk_right);

virtual_key_show(key_left);
virtual_key_show(key_up);
virtual_key_show(key_down);
virtual_key_show(key_right);


