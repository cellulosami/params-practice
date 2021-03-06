class Api::ParamsController < ApplicationController
  def name
    if params["name"][0].upcase == "A"
      @message = "Hey, your name starts with A ya nug"
    else
      @message = nil
    end
    render "name.json.jb"
  end

  def guess_a_number
    @guess = params[:guess].to_i
    correct_number = 36
    if @guess > correct_number
      @result = "Too high!"
    elsif @guess < correct_number
      @result = "Too low!"
    else
      @result = "Correct!!!"
    end
    render "guess_a_number.json.jb"
  end

  def login
    @username = params[:username]
    @password = params[:password]
    if @username == "hugh" && @password == "swordfish"
      @message = "Valid credentials."
    else
      @message = "Invalid credentials. Prepare for exsanguination."
    end
    render 'login.json.jb'
  end
end
