class DishesController < ApplicationController
  def index
  end

  def generate
    @dish = generate_random_dish
    render :index
  end

  private

  def generate_random_dish
    dishes = {
    "餃子" => "food_gyouza.jpg",
    "醤油ラーメン" => "ramen_syouyu.jpg",
    "担々麺" => "ramen_tantanmen.jpg",
    "回鍋肉定食" => "food_hoikoro.jpg",
    "酢豚定食" => "food_subuta.jpg",
    "チャーハン" => "food_cha-han.jpg",
    "八宝菜" => "food_happousai.jpg",
    "油淋鶏定食" => "food_yurinchu.jpg",
    "レバニラ" => "food_rebanira.jpg"
  }
  dish = dishes.to_a.sample
  { name: dish[0], image: dish[1] }
  end
end
