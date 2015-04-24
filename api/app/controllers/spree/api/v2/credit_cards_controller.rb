module Spree
  module Api
    module V2
      class CreditCardsController < Spree::Api::BaseController
        before_action :user

        def index
          @credit_cards = user.
                          credit_cards.
                          accessible_by(current_ability, :read).
                          with_payment_profile.
                          ransack(params[:q]).result.page(params[:page]).per(params[:per_page])
          render json: @credit_cards, meta: pagination(@credit_cards)
        end

        private

        def user
          if params[:user_id].present?
            @user ||= Spree::user_class.accessible_by(current_ability, :read).find(params[:user_id])
          end
        end
      end
    end
  end
end