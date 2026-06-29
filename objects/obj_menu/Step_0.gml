if (keyboard_check_pressed(vk_up))
{
    seleccion--;

    if (seleccion < 0)
        seleccion = array_length(opciones) - 1;
}

if (keyboard_check_pressed(vk_down))
{
    seleccion++;

    if (seleccion >= array_length(opciones))
        seleccion = 0;
}

if (keyboard_check_pressed(vk_enter))
{
    switch(seleccion)
    {
        case 0:
            room_goto(Room1);
        break;

        case 1:
            show_debug_message("Abrir configuraciones");
        break;

        case 2:
            game_end();
        break;
    }
}