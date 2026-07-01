//--------------------------------------
// NAVEGAR CON TECLADO
//--------------------------------------

// Arriba
if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
{
    seleccion--;

    if (seleccion < 0)
        seleccion = array_length(opciones) - 1;
}

// Abajo
if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{
    seleccion++;

    if (seleccion >= array_length(opciones))
        seleccion = 0;
}

//--------------------------------------
// POSICIÓN DE LOS BOTONES
//--------------------------------------

var centroX = display_get_gui_width() / 2;
var inicioY = 250;
var separacion = 50;

//--------------------------------------
// MOUSE
//--------------------------------------

for (var i = 0; i < array_length(opciones); i++)
{
    var x1 = centroX - 120;
    var y1 = inicioY + i * separacion - 20;

    var x2 = centroX + 120;
    var y2 = y1 + 40;

    if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x1, y1, x2, y2))
    {
        seleccion = i;

        if (mouse_check_button_pressed(mb_left))
        {
            switch (i)
            {
                case 0:
                    room_goto(Room1);
                break;

                case 1:
                    show_debug_message("Abrir configuración");
                break;

                case 2:
                    game_end();
                break;
            }
        }
    }
}

//--------------------------------------
// ENTER O ESPACIO
//--------------------------------------

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
{
    switch (seleccion)
    {
        case 0:
            room_goto(Room1);
        break;

        case 1:
            show_debug_message("Abrir configuración");
        break;

        case 2:
            game_end();
        break;
    }
}