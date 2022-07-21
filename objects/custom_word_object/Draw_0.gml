/// @description
draw_set_font(font_medium);
draw_set_halign(fa_left)
draw_set_color(c_black);
draw_text(x,y-6,text_to_show);
draw_set_color(c_white);
draw_text(x-1,y+1-6,text_to_show);
draw_set_color(c_black);
