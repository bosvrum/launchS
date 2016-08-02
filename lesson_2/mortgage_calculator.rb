# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# m = p * (j / (1 - (1 + j)**-n))

require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

puts MESSAGES.inspect

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

loop do
  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['break_line'])

  prompt(MESSAGES['loan_amount'])

  amount = ''
  loop do
    amount = Kernel.gets.chomp

    if amount.empty? || amount.to_f < 0
      prompt(MESSAGES['validate_number'])
    else
      break
    end
  end

  prompt(MESSAGES['interest_rate'])
  prompt(MESSAGES['example_interest_rate'])

  interest_rate = ''

  loop do
    interest_rate = Kernel.gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt(MESSAGES['validate_number'])
    else
      break
    end
  end
  prompt(MESSAGES['loan_years'])

  years = ''
  loop  do
    years = Kernel.gets.chomp

    if years.empty? || years.to_i < 0
      prompt(MESSAGES['validate_number'])
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt(MESSAGES['new_calculation'])
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thanks'])
prompt(MESSAGES['good_bye'])
