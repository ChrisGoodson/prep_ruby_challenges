# 10 friends are sitting in a circle around a table and decide to play a new game. In it, they count up through the numbers from 1 to 100. The first person says "1", the second says "2" and so on... but with a few catches:

# Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
# Whenever the number is divisible by 11, they skip the next person for the following number. For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
# Your job is to code a program which outputs each number and which person said it. Use it to show that player 1 will say the number "100".

# Tips:

# Remember to stick with brute force instead of trying to "figure out" the trick to the problem.
# Name your variables well!
# Ignore the skipping to start out with. Only add it when you're ready.
# Advanced Option:

# Make your method take two inputs -- the number of players and the number you're counting up to. Then see who says the last number each time!
def ordinal(num)
	num = num.to_s
	num2 = num.to_i

    if num == "1" || num2 % 10 == 1 && num[num.length-2] != "1"
        return "st"
    elsif num == "2" || num2 % 10 == 2 && num[num.length-2] != "1"
        return "nd"
    elsif num == "3" || num2 % 10 == 3 && num[num.length-2] != "1"
        return "rd"
    else
        return "th"
    end
end



def counting_game(players, max_num)

	skipping = false
	inverted = false
	current_player = 1
	current_number = 1

	until current_number >= max_num do 
		puts "The #{current_player}#{ordinal(current_player)} player says 'Number #{current_number}'."	

		if current_number % 7 == 0
			inverted = !inverted
		end
		if current_number % 11 == 0
			if (inverted)
				current_player -=1
			else
				current_player += 1
			end
		end
		
		if inverted
			current_player -= 1
		else
			current_player += 1
		end

		if current_player < 1 
			current_player = current_player + players
		end
		if current_player > players
			current_player = current_player - players
		end

		current_number += 1

	end
end

