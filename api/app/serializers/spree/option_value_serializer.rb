module Spree
  class OptionValueSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.option_value_attributes
    attributes :id, :option_type_id, :option_type_name, :name, :presentation
  end
end
