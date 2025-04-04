extends Node

# NOTE: This is the main script of the game. This will handle its menus, game states,
# and anything else that pertains to the whole of the game.

enum game_states {MENU, EXPLORE, TALK}

var current_state = game_states.EXPLORE
