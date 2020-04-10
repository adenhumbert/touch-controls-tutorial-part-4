draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 0.3);
draw_sprite_ext(sprite_index, image_index, x, y, 0.1, 0.1, image_angle, c_white, image_alpha);
draw_set_blend_mode(bm_normal);

