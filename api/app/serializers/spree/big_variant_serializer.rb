module Spree
  class BigVariantSerializer < BaseSerializer
    root :variant

    attributes *Spree::Api::ApiHelpers.variant_attributes

    has_many :images
    has_many :option_values
    has_many :stock_items

    def cost_price
      if scope.current_api_user.has_spree_role? "admin"
        object.cost_price
      else
        false
      end
    end

    def in_stock
      object.in_stock?
    end
  end
end
