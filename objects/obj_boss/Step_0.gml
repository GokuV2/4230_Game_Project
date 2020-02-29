/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34358349
/// @DnDArgument : "code" "if (state = States.Attacking)$(13_10){$(13_10)	$(13_10)	exit;	$(13_10)}$(13_10)if state = States.Dead$(13_10){$(13_10)	hspeed = 0$(13_10)	sprite_index  = spr_boss_death$(13_10)}$(13_10)if (state = States.Idle)$(13_10){$(13_10)	if (distance_to_object(obj_player) <250)$(13_10)	{$(13_10)		state = States.Chase$(13_10)	}$(13_10)}$(13_10)$(13_10)if (state = States.Chase)$(13_10){$(13_10)	if x == xprevious && y == yprevious {$(13_10)    $(13_10)	hspeed = 0$(13_10)    sprite_index = spr_boss$(13_10)	$(13_10)}	$(13_10)	direction = sign(obj_player.x - x);$(13_10)	hspeed = direction * -travelSpeed;$(13_10)	if (hspeed > 0)$(13_10)	{$(13_10)	sprite_index = right_sprite;$(13_10)	$(13_10)	$(13_10)	$(13_10)	}$(13_10)	if (hspeed < 0)$(13_10)	{$(13_10)	sprite_index = left_sprite;$(13_10)	$(13_10)	$(13_10)	$(13_10)	}$(13_10)	if (distance_to_object(obj_player) > 250)$(13_10)	{$(13_10)		state = States.Idle	$(13_10)	}$(13_10)	if (distance_to_object(obj_player) < 10) {$(13_10)	state = States.Attacking$(13_10)	}$(13_10)}$(13_10)$(13_10)if (distance_to_object(obj_player) <= 10)$(13_10){$(13_10)	$(13_10)	$(13_10)	state = States.Attacking$(13_10)	$(13_10)			$(13_10)	$(13_10)	if (obj_player.x < obj_boss.x)$(13_10)	{$(13_10)		sprite_index =  spr_boss_attack_left$(13_10)	image_speed = 1$(13_10)	image_index = 0$(13_10)	}else$(13_10)	{$(13_10)		sprite_index = spr_boss_attack$(13_10)	image_speed = 1$(13_10)	image_index = 0$(13_10)	}$(13_10)$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	 if (distance_to_object(obj_player) > 50) {$(13_10)	state = States.Idle$(13_10)	 }$(13_10)	}$(13_10)if state = States.Idle$(13_10){$(13_10)	if x == xprevious && y == yprevious {$(13_10)    $(13_10)	hspeed = 0$(13_10)    sprite_index = spr_boss$(13_10)	$(13_10)}	$(13_10)}"
if (state = States.Attacking)
{
	
	exit;	
}
if state = States.Dead
{
	hspeed = 0
	sprite_index  = spr_boss_death
}
if (state = States.Idle)
{
	if (distance_to_object(obj_player) <250)
	{
		state = States.Chase
	}
}

if (state = States.Chase)
{
	if x == xprevious && y == yprevious {
    
	hspeed = 0
    sprite_index = spr_boss
	
}	
	direction = sign(obj_player.x - x);
	hspeed = direction * -travelSpeed;
	if (hspeed > 0)
	{
	sprite_index = right_sprite;
	
	
	
	}
	if (hspeed < 0)
	{
	sprite_index = left_sprite;
	
	
	
	}
	if (distance_to_object(obj_player) > 250)
	{
		state = States.Idle	
	}
	if (distance_to_object(obj_player) < 10) {
	state = States.Attacking
	}
}

if (distance_to_object(obj_player) <= 10)
{
	
	
	state = States.Attacking
	
			
	
	if (obj_player.x < obj_boss.x)
	{
		sprite_index =  spr_boss_attack_left
	image_speed = 1
	image_index = 0
	}else
	{
		sprite_index = spr_boss_attack
	image_speed = 1
	image_index = 0
	}

	hspeed = 0
	vspeed = 0
	 if (distance_to_object(obj_player) > 50) {
	state = States.Idle
	 }
	}
if state = States.Idle
{
	if x == xprevious && y == yprevious {
    
	hspeed = 0
    sprite_index = spr_boss
	
}	
}