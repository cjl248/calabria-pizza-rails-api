class MenuItemsController < ApplicationController

  def show
    menu_item = MenuItem.find(params[:id])
    render json: menu_item.to_json(
      :include => {
        :menu_category => {:except => [:created_at, :updated_at]}
      },
      :except => [:created_at, :updated_at])
  end

  def index
    menu_items = MenuItem.all
    render json: menu_items.to_json(
      :include => {
        :menu_category => {:except => [:created_at, :updated_at]}
      },
      :except => [:created_at, :updated_at])
  end

end
