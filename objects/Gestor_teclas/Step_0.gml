/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

up = false;
down = false;
left = false;
right = false;

space = false;
escape = false;
enter = false;
shift = false;
dispara = false;
pause = false;

pressed = keyboard_check_pressed(keyboard_key);
released = keyboard_check_released(keyboard_key);


//principal

if(keyboard_check(vk_up) || keyboard_check(ord("W"))) up = true;
if(keyboard_check(vk_down) || keyboard_check(ord("S"))) down = true;
if(keyboard_check(vk_right) || keyboard_check(ord("D"))) right = true;
if(keyboard_check(vk_left) || keyboard_check(ord("A"))) left = true;
if(keyboard_check(vk_space)) space = true;
if(keyboard_check(vk_shift)) shift = true;




//secundary
if(keyboard_check(vk_enter)) enter = true;
if(keyboard_check(ord("P"))) pause = true;
if(keyboard_check(vk_escape)) escape = true;




