class KittensController < ApplicationController

  def index
    all_kittens = Kitten.all
    render json: all_kittens.as_json
  end

  def create
    new_kitten = Kitten.new(
      name: params[:name],
      color: params[:color],
      age: params[:age]
    )
    new_kitten.save
    render json: new_kitten
  end

  def show
    the_kitten = Kitten.find(params[:id])
    render json: the_kitten
  end

  def update
    the_kitten = Kitten.find(params[:id])
    the_kitten.name = params[:name] || the_kitten.name
    the_kitten.color = params[:color] || the_kitten.color
    the_kitten.age = params[:age] || the_kitten.age
    the_kitten.save
    render json: the_kitten
  end

end
