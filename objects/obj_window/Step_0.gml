/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54FC0808
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "1"
if(vspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 042B9775
	/// @DnDParent : 54FC0808
	/// @DnDArgument : "var" "downspeed"
	/// @DnDArgument : "value" "-vspeed"
	var downspeed = -vspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 09EB5EC4
	/// @DnDParent : 54FC0808
	/// @DnDArgument : "value" "downspeed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += downspeed;
}