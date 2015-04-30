module Spree
  class StockMovementSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.stock_movement_attributes
    attributes :id, :stock_item_id, :quantity

    has_one :stock_item
  end
end
