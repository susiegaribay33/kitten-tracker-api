class KittensController < ApplicationController

  def index
    all_kittens = Kitten.all
    render json: all_kittens.as_json
  end

end
