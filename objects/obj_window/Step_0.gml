/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F41EC72
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height+360"
if(y > room_height+360)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 32791602
	/// @DnDParent : 0F41EC72
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "200"
	/// @DnDArgument : "max" "room_width-200"
	var new_x = floor(random_range(200, room_width-200 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E0F3117
	/// @DnDParent : 0F41EC72
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-200"
	x = new_x;
	y = -200;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2053F161
	/// @DnDParent : 0F41EC72
	/// @DnDArgument : "var" "chance"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	var chance = floor(random_range(0, 1 + 1));

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 05AF1592
	/// @DnDParent : 0F41EC72
	/// @DnDArgument : "spriteind" "spr_window"
	/// @DnDSaveInfo : "spriteind" "spr_window"
	sprite_index = spr_window;
	image_index = 0;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 38D7736F
	/// @DnDParent : 0F41EC72
	/// @DnDArgument : "expr" "chance"
	var l38D7736F_0 = chance;
	switch(l38D7736F_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 50368B15
		/// @DnDParent : 38D7736F
		case 0:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 17202EAA
			/// @DnDParent : 50368B15
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_civilian"
			/// @DnDArgument : "layer" ""Spawns""
			/// @DnDSaveInfo : "objectid" "obj_civilian"
			instance_create_layer(x + 0, y + 0, "Spawns", obj_civilian);
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 642AE34E
			/// @DnDParent : 50368B15
			/// @DnDArgument : "imageind" "1"
			/// @DnDArgument : "spriteind" "spr_window"
			/// @DnDSaveInfo : "spriteind" "spr_window"
			sprite_index = spr_window;
			image_index = 1;
			break;
	}
}