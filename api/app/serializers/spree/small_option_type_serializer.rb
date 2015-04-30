module Spree
  class SmallOptionTypeSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.option_types_attributes
    attributes :id, :name, :position, :presentation
  end
end
