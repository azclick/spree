module Spree
  class SmallVariantSerializer < BaseSerializer
    root :variant

    attributes *Spree::Api::ApiHelpers.variant_attributes

    has_many :images
    has_many :option_values

    def total_on_hand
      Spree::Config.track_inventory_levels ? object.total_on_hand : nil
    end

    def in_stock
      object.in_stock?
    end

    def is_backorderable
      object.is_backorderable?
    end

    def is_destroyed
      object.destroyed?
    end
  end
end
