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
	/// @DnDArgument : "speed" "-35"
	/// @DnDArgument : "type" "2"
	vspeed = -35;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 653A3744
	/// @DnDParent : 23ECB7E6
	/// @DnDArgument : "var" "jump_status"
	jump_status = 0;
}