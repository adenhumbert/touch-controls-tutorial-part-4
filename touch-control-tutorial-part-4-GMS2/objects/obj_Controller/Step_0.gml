//Pinch and zoom controls
var mx0raw, my0raw, mx1raw, my1raw;
mx0raw = device_mouse_raw_x(0);                     //get the "raw" mouse position: ie. The SCREEN position not the room position
my0raw = device_mouse_raw_y(0);
mx1raw = device_mouse_raw_x(1);
my1raw = device_mouse_raw_y(1);

var dx = display_get_width() / 5;
var dy = 0;
var dw = dx * 4;
var dh = display_get_height();

if (mx0raw > dx && mx0raw < dw && my0raw > dy && my0raw < dh) && (mx1raw > dx && mx1raw < dw && my1raw > dy && my1raw < dh)
{
if device_mouse_check_button(1, mb_left)
    {
    if device_mouse_check_button_pressed(1, mb_left)
        {
        //Set the initial zoom value on pressed 
        v_dist = point_distance(mx0raw, my0raw, mx1raw ,my1raw) * v_scale;
        v_ang_now = point_direction(mx0raw, my0raw, mx1raw ,my1raw);
        v_ang_prev = __view_get( e__VW.Angle, 0 );
        }
    v_scale = v_dist / max(1, point_distance(mx0raw, my0raw, mx1raw, my1raw));      //Set the scale based on distance difference between the initial zoom and the current one
    if v_scale < 0.5 v_scale = 0.5 else if v_scale > 1.5 v_scale = 1.5;             //Limit the scale
    __view_set( e__VW.WView, 0, initial_w * v_scale );                                            //Scale the view width and height
    __view_set( e__VW.HView, 0, initial_h * v_scale );
    __view_set( e__VW.XView, 0, global.Player_x - (__view_get( e__VW.WView, 0 ) / 2) );                          //Place the view x/y position correctly
    __view_set( e__VW.YView, 0, global.Player_y - (__view_get( e__VW.HView, 0 ) / 2) );
    var ang_dif =  v_ang_now - point_direction(mx0raw, my0raw, mx1raw ,my1raw);
    __view_set( e__VW.Angle, 0, v_ang_prev + ang_dif );
    }
}

