class ZebraController < ApplicationController

  #Helper method
  def who_won(computer_played, user_played)
    if computer_played == user_played
      "Tie"
    elsif (computer_played == "rock" && user_played == "scissors") ||
          (computer_played == "paper" && user_played == "rock") ||
          (computer_played == "scissors" && user_played == "paper")
      "Computer_win"
    else
      "User_win"
    end
  end

  def walnut
    render({ :template => "game_templates/homepage"})
  end

  def giraffe
    options = ["rock", "paper", "scissors"]
    @computer_played = options.sample
    @user_played = "rock"
    @result = who_won @computer_played, @user_played
    render({ :template => "game_templates/play_rock"})
  end

  def lion
    options = ["rock", "paper", "scissors"]
    @computer_played = options.sample
    @user_played = "paper"
    @result = who_won @computer_played, @user_played
    render({ :template => "game_templates/play_paper"})
  end

  def tiger
    options = ["rock", "paper", "scissors"]
    @computer_played = options.sample
    @user_played = "scissors"
    @result = who_won @computer_played, @user_played
    render({ :template => "game_templates/play_scissors"})
  end

end
