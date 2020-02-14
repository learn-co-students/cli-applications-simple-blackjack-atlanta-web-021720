require "pry"

def welcome
  # code #welcome here
puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
rand(1...11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
user_input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 card_one = deal_card
 card_two = deal_card
 card_total = card_one + card_two
 display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
 if user_input == "h" || user_input == "s"
   if user_input == "h"
     card_total += deal_card
     return card_total
   elsif user_input == "s"
     return card_total
   end 
   elsif get_user_input != "h" || get_user_input != "s"
    invalid_command
    prompt_user
 end 
 end 
def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  card_total = initial_round
  while card_total < 21 
  card_total = hit?(card_total)
  card_total = display_card_total(card_total)
end
end_game(card_total)
end 
    
