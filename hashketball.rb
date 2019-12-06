# Write your code here!

def make_player(pname, num, shoe, points, rebounds, ass, stl, blk, sd)
	return {
		:player_name => pname,
		:number => num,
		:shoe => shoe,
		:points => points,
		:rebounds => rebounds,
		:assists => ass,
		:steals => stl,
		:blocks => blk,
		:slam_dunks => sd
	}
end

def game_hash
	home = {
		:team_name => "Brooklyn Nets",
		:colors    => ["Black", "White"],
		:players   => [
			make_player("Alan Anderson",  0, 16, 22, 12, 12,  3,  1,  1),
			make_player("Reggie Evans",  30, 14, 12, 12, 12, 12, 12,  7),
			make_player("Brook Lopez",   11, 17, 17, 19, 10,  3,  1, 15),
			make_player("Mason Plumlee",  1, 19, 26, 11,  6,  3,  8,  5),
			make_player("Jason Terry",   31, 15, 19,  2,  2,  4, 11,  1)
		]
	}
	away = {
		:team_name => "Charlotte Hornets",
		:colors => ["Turquoise", "Purple"],
		:players =>[
			make_player("Jeff Adrien",     4, 18, 10,  1,  1,  2,  7,  2),
			make_player("Bismack Biyombo", 0, 16, 12,  4,  7, 22, 15, 10),
			make_player("DeSagna Diop",    2, 14, 24, 12, 12,  4,  5,  5),
			make_player("Ben Gordon",      8, 15, 33,  3,  2,  1,  1,  0),
			make_player("Kemba Walker",   33, 15,  6, 12, 12,  7,  5, 12)
		]
	}
	return {:home => home, :away => away}
end

def all_players
	gh = game_hash()
 	gh[:home][:players] + gh[:away][:players]
end

def num_points_scored(pname)
	players = all_players()
	play = players.find {|p| p[:player_name] == pname}
	return play[:points]
end





