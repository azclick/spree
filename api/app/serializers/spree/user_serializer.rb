module Spree
  class UserSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.user_attributes
    attributes :id, :email, :created_at, :updated_at

    has_one :bill_address
    has_one :ship_address
  end
end
