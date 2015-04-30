module Spree
  class ProductSerializer < BaseSerializer
    embed :ids

    attributes *Spree::Api::ApiHelpers.product_attributes

    has_one :master
    has_many :variants
    has_many :product_properties
    has_many :option_types
    has_many :classifications

    def has_variants
      object.has_variants?
    end

    def total_on_hand
      Spree::Config.track_inventory_levels ? object.total_on_hand : nil
    end
  end
end
