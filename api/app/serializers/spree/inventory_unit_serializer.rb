module Spree
  class InventoryUnitSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.inventory_unit_attributes
    attributes :id, :state, :shipment_id
  end
end
