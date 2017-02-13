class BogglesController < ApplicationController
  def game
    @grid = BoggleGame.generate_grid(10)
    @start_time = Time.now
    session[:grid] = @grid
    session[:start_time] = @start_time
  end

  def score
    attempt = params[:attempt]
    end_time = Time.now
    start_time = Time.parse(session[:start_time])
    @grid = session[:grid]
    @result = BoggleGame.run_game(attempt, @grid, start_time, end_time)
  end
end
