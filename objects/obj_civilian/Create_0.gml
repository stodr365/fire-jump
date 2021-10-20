/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 730EF64B
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_civilian_0"
/// @DnDArgument : "option_1" "spr_civilian_1"
/// @DnDArgument : "option_2" "spr_civilian_2"
sprite_index = choose(spr_civilian_0, spr_civilian_1, spr_civilian_2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60A49D5D
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "rescued"
rescued = false;