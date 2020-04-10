//Cover outside of the room
draw_set_color(c_black);
draw_rectangle(-1024, -1024, room_width + 1024, 0, false);
draw_rectangle(-1024, -1024, 0, room_height + 1024, false);
draw_rectangle(-1024, room_height, room_width + 1024, room_height + 1024, false);
draw_rectangle(room_width, -1024, room_width + 1024, room_height + 1024, false);
draw_set_color(c_white);

