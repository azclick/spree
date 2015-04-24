module Spree
  class PromotionSerializer < BaseSerializer
    # attributes *Spree::Api::ApiHelpers.promotion_attributes
    attributes  :id, :name, :description, :expires_at, :starts_at, :type, :usage_limit,
                :match_policy, :code, :advertise, :path

  end
end
