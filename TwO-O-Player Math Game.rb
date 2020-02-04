

#class Game: Keep track of the game status and Loop the rounds
#class Player: define the actions: the questions and answers from the players


#class Game
#Q  What will they need in order to be initialized?
#A: @player1, @player2


#Q  What public methods will be defined on them?
#A: display_new_turn, display_game_status, game_over?, display_next_turn,  run


#class Player
#Q  What will they need in order to be initialized?
#A name, number_of_lives_left

#Q  What public methods will be defined on them?
#A  Ask_response_addition, dead?



#Q  Which class will contain the game loop (where each instance of the loop is the other players turn)?
#A the game Class

#Q  Which class should manage who the current_player is?
#A the game Class


#Q  Which class(es) will contain user I/O and which will not have any?
#A  the game class