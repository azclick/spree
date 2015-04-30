module Spree
  class PropertySerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.property_attributes
    attributes :id, :name, :presentation
  end
end
