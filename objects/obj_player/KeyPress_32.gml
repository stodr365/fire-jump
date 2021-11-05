/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 23ECB7E6
/// @DnDArgument : "var" "jump_status"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(jump_status >= 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 35187792
	/// @DnDParent : 23ECB7E6
	/// @DnDArgument : "speed" "-(35+global.score_total/3)"
	/// @DnDArgument : "type" "2"
	vspeed = -(35+global.score_total/3);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1640F957
	/// @DnDParent : 23ECB7E6
	/// @DnDArgument : "spriteind" "spr_player_air"
	/// @DnDSaveInfo : "spriteind" "spr_player_air"
	sprite_index = spr_player_air;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 653A3744
	/// @DnDParent : 23ECB7E6
	/// @DnDArgument : "var" "jump_status"
	jump_status = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 701A8B36
	/// @DnDParent : 23ECB7E6
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.score_total"
	global.score_total += -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D6CB221
	/// @DnDParent : 23ECB7E6
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "obj_jump_effect"
	/// @DnDArgument : "layer" ""player""
	/// @DnDSaveInfo : "objectid" "obj_jump_effect"
	instance_create_layer(x + 0, other.y, "player", obj_jump_effect);
}