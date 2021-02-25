class Api::ParamsController < ApplicationController
  def name
    render "name.json.jb"
  end
end
