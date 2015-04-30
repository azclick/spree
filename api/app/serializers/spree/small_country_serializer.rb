module Spree
  class SmallCountrySerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.country_attributes
    attributes :id, :iso_name, :iso, :iso3, :name, :numcode
  end
end
