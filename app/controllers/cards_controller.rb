class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  private

  def card_params
    params.require(:card).permit(:name, :category_id, :expiration, :image).merge(user_id: current_user.id)
  end
end
