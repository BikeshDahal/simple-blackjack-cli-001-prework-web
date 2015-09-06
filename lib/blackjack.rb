def welcome
  puts"Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
    card= Random.new.rand(1..11);# code #deal_card here
end

def display_card_total(cardtotal)
    
  puts "Your cards add up to #{cardtotal}";

    # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  return "Type 'h' to hit or 's' to stay"
# code #prompt_user here
end

def get_user_input
    choice=gets.chomp;
    return choice;
        # code #get_user_input here
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"# code #end_game here
end

def initial_round
    card1=deal_card;
    card2=deal_card;
    totalcard=card1+card2;
    display_card_total(totalcard);
    return totalcard;# code #initial_round here
end

def hit?(card=0)
        prompt_user;
        if get_user_input=="h"
            card=card+deal_card;
        end;
        
  return card;# code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome;
    card=initial_round;
    until card>21 do;
        card=hit?(card)
        display_card_total(card);
    end
    end_game(card);
  # code runner here
end
    
