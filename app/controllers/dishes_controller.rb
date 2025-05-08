class DishesController < ApplicationController
    def generate
      @dish = generate_random_dish
    end
  
    private
  
    def generate_random_dish
      dishes = {
        "餃子" => "food_gyouza.jpg",
        "醤油ラーメン" => "ramen_syouyu.jpg",
        "担々麺" => "ramen_tantanmen.jpg",
        "回鍋肉" => "food_hoikoro.jpg",
        "酢豚" => "food_subuta.jpg",
        "チャーハン" => "food_cha-han.jpg",
        "八宝菜" => "food_happousai.jpg",
        "油淋鶏" => "food_yurinchu.jpg",
        "レバニラ" => "food_rebanira.jpg",
        "麻婆豆腐" => "food_mabo_doufu.jpg"
      }
  
      name, image = dishes.to_a.sample
      { name: name, image: image }
    end
  end