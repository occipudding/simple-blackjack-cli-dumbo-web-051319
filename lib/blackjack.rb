def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(tot)
  puts "Your cards add up to #{tot}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(tot)
  puts "Sorry, you hit #{tot}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(total)
  prompt_user
  choice = get_user_input
  if choice == 's'
    total = total
  elsif choice == 'h'
    total += deal_card
  else
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  puts "Invalid input"
end

def runner
  welcome
  total = initial_round
  until total >= 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
