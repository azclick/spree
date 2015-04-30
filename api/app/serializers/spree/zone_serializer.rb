module Spree
  class ZoneSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.zone_attributes
    attributes :id, :name

    has_many :zone_members
  end
end
