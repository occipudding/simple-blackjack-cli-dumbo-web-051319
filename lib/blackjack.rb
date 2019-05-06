def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  puts "Your cards add up to #{sum}"
  sum
end

def hit?
  prompt_user
  choice = get_user_input
  if choice == 's'
    display_card_total = display_card_total
  elsif choice == 'h'
    display_card_total += deal_card
  else
    invalid_command
    hit?(display_card_total)
  end
  display_card_total
end

def invalid_command
  puts "Invalid input"
end

def runner
  #welcome
  #initial_round
  #until display_card_total > 21
  #  hit?
  #  display_card_total
  #end
end
    
