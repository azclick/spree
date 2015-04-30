module Spree
  class VariantSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.variant_attributes
    attributes :id, :name, :sku, :price
  end
end
