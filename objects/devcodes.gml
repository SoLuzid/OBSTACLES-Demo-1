#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dx = view_xview[0] + 15;
dy = view_yview[0] + 12;
line = 14;

draw_text(dx, dy, "FPS: " + string(fps_fast));
#define KeyPress_90
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
code = get_string("Insert Code", "firstlvl");

switch (code)
{
    case "firstlvl":
        room_goto(Level_1);
    break;

    case "secondlvl":
        room_goto(Level_2);
    break;

    case "thirdlvl":
        room_goto(Level_3);
    break;

    case "demowin":
        room_goto(Demo_End);
    break;

    case "fuckthemusic":
        sound_stop_all();
    break;

    case "maintheme":
        sound_loop(maintheme);
    break;

    case "lvl1theme":
        sound_loop(level1theme);
    break;

    case "lvl2theme":
        sound_loop(level2theme);
    break;

    case "lvl3theme":
        sound_loop(level3theme);
    break;

    case "lvl4theme":
        sound_loop(level4theme);
    break;

    case "lvl5theme":
        sound_loop(level5theme);
    break;

    case "boss1theme":
        sound_loop(boss1theme);
    break;

    case "demowintheme":
        sound_loop(demowintheme);
    break;

    case "fuckit":
        game_end();
    break;
}
