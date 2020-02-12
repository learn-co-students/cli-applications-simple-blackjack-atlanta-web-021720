def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"

end

def deal_card
  # code #deal_card here
rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
total = 0
   total = card_total + deal_card
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return card_total
  elsif user_input == "h"
    card_total += deal_card
  elsif user_input != "s" || user_input != "h"
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  if card_total <= 21
  card_total = hit?(card_total)
  display_card_total(card_total)

  end
  end_game(card_total)

  # code runner here
end
