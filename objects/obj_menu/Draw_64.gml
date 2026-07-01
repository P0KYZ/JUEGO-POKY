draw_sprite_stretched(
    spr_menu_fondo,
    0,
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height()
);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(-1);

draw_text(display_get_gui_width()/2,120,"POKY");

for(var i=0;i<array_length(opciones);i++)
{
    var texto = opciones[i];

    if(i==seleccion)
        texto = "> " + texto + " <";

    draw_text(display_get_gui_width()/2,250+i*50,texto);
}