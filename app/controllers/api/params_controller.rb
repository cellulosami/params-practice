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
    render "guess_a_number.json.jb"
  end
end
