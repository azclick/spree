module Spree
  class VariantSerializer < BaseSerializer
    attributes *Spree::Api::ApiHelpers.variant_attributes

    has_many :images
  end
end
