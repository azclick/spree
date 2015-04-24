module Spree
  class BaseSerializer < ActiveModel::Serializer
    extend Spree::Api::ApiHelpers

    embed :ids

    # def self.attribute_keys
    #   name.sub('Serializer', '').constantize.column_names
    # end
  end
end
