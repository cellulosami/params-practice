class Api::ParamsController < ApplicationController
  def name
    if params["name"][0].upcase == "A"
      @message = "Hey, your name starts with A!"
    else
      @message = nil
    end
    render "name.json.jb"
  end

  def guess_a_number
    number = 36
    @guess = params[:guess].to_i
    if @guess > 36
      @result = "Too high!"
    elsif @guess < 36
      @result = "Too low!"
    else
      @result = "Correct!!!"
    end
    render "guess_a_number.json.jb"
  end
end
