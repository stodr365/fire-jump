/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 415FAF93
/// @DnDArgument : "speed" "-42"
/// @DnDArgument : "type" "2"
vspeed = -42;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6E444FB7
/// @DnDArgument : "spriteind" "spr_player_jump"
/// @DnDSaveInfo : "spriteind" "spr_player_jump"
sprite_index = spr_player_jump;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0CC7DDB5
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "obj_jump_effect"
/// @DnDArgument : "layer" ""player""
/// @DnDSaveInfo : "objectid" "obj_jump_effect"
instance_create_layer(x + 0, other.y, "player", obj_jump_effect);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AEDC267
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "35"
if(vspeed > 35)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4810C3A4
	/// @DnDParent : 6AEDC267
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73EF9E81
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "jump_status"
jump_status = 1;