class Api::ParamsController < ApplicationController
  def name
    if params["name"][0].upcase == "A"
      @message = "Hey, your name starts with A!"
    else
      @message = nil
    end
    render "name.json.jb"
  end
end
