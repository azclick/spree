module Spree
  class ClassificationSerializer < BaseSerializer
    attributes :id, :position, :taxon_id

    has_one :taxon, serializer: Spree::TaxonNoChildrenSerializer
  end
end
