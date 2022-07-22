
class Game
    @@solution = Array.new(4) { rand(1..6) }
    print @@solution
        if @@solution.any?{ |e| @@solution.count(e) > 2 }
            @@solution = Array.new(4) { rand(1..6) }
            print @@solution
        end

    def play
        9.times do
            player_guess = gets.chomp
            player_array = player_guess.split("").map(&:to_i)
            
            diff = player_array.map.with_index { |e,i| e == @@solution[i] }
            white_counter = diff.count(true)
            false_elements = diff.each_index.select { |i| !diff[i] }
            j = 0
            red_counter = 0
            false_elements.size.times do
                if j<false_elements.size
                    if @@solution.include?(player_array[false_elements[j]])
                            red_counter += 1
                    end
                end
                j += 1
            end
            puts red_counter
            if diff.all?(true)
                print "You won!"
            elsif white_counter>0
                print "#{white_counter} are correct, but #{red_counter} are in wrong position."
            else
                print "You lose!"
            end
        end 
    end  
      
end

new_game = Game.new()
new_game.play()