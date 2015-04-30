module Spree
  class BigStockItemSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.stock_item_attributes
    attributes :id, :count_on_hand, :stock_location_id, :backorderable,
               :available, :stock_location_name

    has_one :variant
    def available
      object.available?
    end

    def stock_location_name
      object.stock_location.name
    end
  end
end
