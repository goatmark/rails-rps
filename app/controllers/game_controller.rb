class GameController < ApplicationController
  
  def evaluate_solution(player_move, computer_move)
    solution = ""
    if player_move == "rock"
      if computer_move == "rock"
        solution = "We tied!"
      elsif computer_move == "paper"
        solution = "We lost!"
      elsif computer_move == "scissors"
        solution = "We won!"
      end
    elsif player_move == "paper"
      if computer_move == "rock"
        solution = "We won!"
      elsif computer_move == "paper"
        solution = "We tied!"
      elsif computer_move == "scissors"
        solution = "We lost!"
      end
    elsif player_move == "scissors"
      if computer_move == "rock"
        solution = "We lost!"
      elsif computer_move == "paper"
        solution = "We won!"
      elsif computer_move == "scissors"
        solution = "We tied!"
      end
    end
    return solution
  end
  
  def home_method
    render({:template => "game_templates/home"})
  end
  
  def rock_method

    @player_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    @solution = evaluate_solution(@player_move, @computer_move)

    render({:template => "game_templates/play_rock"})
  end

  def paper_method
    @player_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    @solution = evaluate_solution(@player_move, @computer_move)
    render({:template => "game_templates/play_paper"})
  end

  def scissors_method
    @player_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    @solution = evaluate_solution(@player_move, @computer_move)
    render({:template => "game_templates/play_scissors"})
  end
end
