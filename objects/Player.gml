#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Initialize Variables
grav = 0.3;
hsp = 0;
vsp = 0;
jumpspeed = 7;
smalljumpspeed = 6;
movespeed = 5;
jump_timer = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Movement controls
//Get the player's input
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump = keyboard_check_pressed(ord('W'));
key_fulljump = keyboard_check(vk_shift);

//React to inputs
move = key_left + key_right;
target_hsp = move * movespeed;
hsp += (target_hsp - hsp) * 0.25;

if (abs(hsp) < 0.05) hsp = 0;

if (hsp != 0)
{
    image_xscale = sign(hsp);
}

if (vsp < 10)
{
    vsp += grav;
    if (vsp > 0) vsp += grav * 0.5;
}

if (place_meeting(x,y+1,par_solid))
{
    if (key_jump)
    {
        if (key_fulljump)
            vsp = -jumpspeed;
        else
            vsp = -smalljumpspeed;
    }
}

//Horizontal Collision
if (place_meeting(x+hsp,y,par_solid))
{
    while(!place_meeting(x+sign(hsp),y,par_solid))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,par_solid))
{
    while(!place_meeting(x,y+sign(vsp),par_solid))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
#define Collision_Spikes
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_restart()
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_restart()
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
room_restart()
