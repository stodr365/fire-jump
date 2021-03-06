/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F180FDB
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height/2"
if(y < room_height/2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26305C10
	/// @DnDParent : 6F180FDB
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52AEF2CF
		/// @DnDParent : 26305C10
		/// @DnDArgument : "var" "downspeed"
		/// @DnDArgument : "value" "-vspeed"
		var downspeed = -vspeed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0B915C5C
		/// @DnDApplyTo : {obj_move_parent}
		/// @DnDParent : 26305C10
		/// @DnDArgument : "value" "downspeed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_move_parent) {
		y += downspeed;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 03EC4D59
		/// @DnDParent : 26305C10
		/// @DnDArgument : "value" "room_height/2"
		/// @DnDArgument : "instvar" "1"
		y = room_height/2;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 318480F6
		/// @DnDParent : 26305C10
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""background""
		var back_y = layer_get_y("background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 27F5E1A3
		/// @DnDInput : 2
		/// @DnDParent : 26305C10
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""background""
		/// @DnDArgument : "arg_1" "back_y+downspeed"
		layer_y("background", back_y+downspeed);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 1999D85D
		/// @DnDParent : 26305C10
		/// @DnDArgument : "value" "downspeed/100"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "global.score_height"
		global.score_height += downspeed/100;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4543E763
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6CFCDEE0
	/// @DnDParent : 4543E763
	/// @DnDArgument : "spriteind" "spr_player_fall"
	/// @DnDSaveInfo : "spriteind" "spr_player_fall"
	sprite_index = spr_player_fall;
	image_index = 0;
}