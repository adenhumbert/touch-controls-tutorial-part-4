
var base_w = 640;
var base_h = 480;
var norm_w = 640;
var norm_h = 480;
var max_w = 640;
var max_h = 480;

if os_type == os_windows || os_type == os_macosx || os_type == os_linux && os_browser == browser_not_a_browser
    {
    var aspect = window_get_height() / window_get_width();
    if aspect < norm_w / norm_h
        {
        VIEW_HEIGHT = norm_h;
        VIEW_WIDTH = norm_h / aspect;
        }
    else
        {
        VIEW_HEIGHT = norm_w * aspect;
        VIEW_WIDTH = norm_w;
        }
    window_set_size(max_w, max_h);
    display_set_gui_size(max_w, max_h);
    }
else
    {
    if display_get_width() > display_get_height()
        {
        display_set_gui_size(display_get_width(), display_get_height());
        var aspect = display_get_height() / display_get_width();
        }
    else
        {
        display_set_gui_size(display_get_height(), display_get_width());
        var aspect = display_get_width() / display_get_height();
        }
    if aspect < base_h / base_w
        {
        VIEW_HEIGHT = base_h;
        VIEW_WIDTH = base_h / aspect;
        }
    else
        {
        VIEW_HEIGHT = base_w * aspect;
        VIEW_WIDTH = base_w;
        }
    max_w = VIEW_WIDTH;
    max_h = VIEW_HEIGHT;
    }

if os_browser == browser_not_a_browser
{
var i=true;
var rm=room_next(room);
while (i = true)
    {
    room_set_view(rm, 0, true,(norm_w - VIEW_WIDTH) div 2, (norm_h - VIEW_HEIGHT) div 2, VIEW_WIDTH, VIEW_HEIGHT, 0, 0, max_w, max_h, 0, 0, -1, -1, -1);
    room_set_view_enabled(rm,true);
    if rm = room_last
        {
        i = false;
        }
    else
        {
        rprev = rm;
        rm = room_next(rprev);
        }
    }
}
else
{
var i=true;
var rm=room_next(room);
while (i = true)
    {
    room_set_view(rm, 0, true,(max_w - max_w) div 2, (max_h - max_h) div 2, max_w, max_h, 0, 0, max_w, max_h, 0, 0, -1, -1, -1);
    room_set_view_enabled(rm,true);
    if rm = room_last
        {
        i = false;
        }
    else
        {
        rprev = rm;
        rm = room_next(rprev);
        }
    }
}

