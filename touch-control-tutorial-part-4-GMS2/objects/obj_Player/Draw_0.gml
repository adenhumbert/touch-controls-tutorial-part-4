__view_set( e__VW.XView, 0, global.Player_x - (__view_get( e__VW.WView, 0 ) * 0.5) );                          //Place the view x/y position correctly
__view_set( e__VW.YView, 0, global.Player_y - (__view_get( e__VW.HView, 0 ) * 0.5) );

//Draw legs and shadow..
draw_sprite_ext(sprite_index, f_index, x - 2, y + 2, image_xscale, image_yscale, h_angle, c_black, 0.5);
draw_sprite_ext(sprite_index, f_index, x, y, image_xscale, image_yscale, h_angle, image_blend, image_alpha);
//Draw body and shadow...
draw_sprite_ext(spr_Player_Head, 1, x - 5, y + 5, image_xscale, image_yscale, b_angle, c_black, 0.5);
draw_sprite_ext(spr_Player_Head, 1, x, y, image_xscale, image_yscale, b_angle, image_blend, image_alpha);
//Draw head and shadow
draw_sprite_ext(spr_Player_Head, 0, x - 5, y + 5, image_xscale, image_yscale, h_angle, c_black, 0.3);
draw_sprite_ext(spr_Player_Head, 0, x, y, image_xscale, image_yscale, h_angle, image_blend, image_alpha);

