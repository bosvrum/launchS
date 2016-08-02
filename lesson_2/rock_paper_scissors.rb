VALID_CHOICES = %w(rock paper scissors)

def test_method
  prompt('test message')
end

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

test_method

def display_results(player, computer)
  if player_won(player, computer)
    prompt("You won!")
  elsif computer_won(player, computer)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def player_won(player, computer)
  (player == 'rock' && computer == 'scissors') ||
    (player == 'paper' && computer == 'rock') ||
    (player == 'scissors' && computer == 'paper')
end

def computer_won(player, computer)
  (player == 'rock' && computer == 'paper') ||
    (player == 'paper' && computer == 'scissors') ||
    (player == 'scissors' && computer == 'rock')
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You choose #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing. Good bye.")
