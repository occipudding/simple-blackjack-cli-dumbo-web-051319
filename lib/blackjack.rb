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

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
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
    hit?(total)
  end
  total
end

def invalid_command
  puts "Invalid input"
end

def runner
  welcome
  total = initial_round
  prev = 0
  until hit?(total) > 21 || hit(total) ==  prev
    prev == hit?(total)
    hit?(total)
    total += hit?(total)
    display_card_total
  end
  end_game(hit?(total))
end
