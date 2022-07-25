# Mastermind
A game like wordle but using numbers

Using OOP to build a gueirb
ssing game by choosing 4 digit number each turn. After each turn you will get a hint if there were correct digit in the guess.


1 #Computer generate random 4 digit solution 
    - store each number separately
    - index of each number is the position
    - no more than 2 same digits

2 #Player's turn to guess a 4 digit number
    - prompt for input
    - store each number separately
    - index of each number is the position

3 #Feedback on the correct guess and wrong guess
    - win if all 4 digits were correct 
    - otherwise let player know which number is correct but in the wrong space
        -correct number in correct position (red indicator)
        -correct number but in wrong position (white indicator)

4 #Total 9 turns
    - loop turns 9 times
    - exit when there is correct guess

