module Spree
  class TaxonomyTaxonSerializer < BaseSerializer
    root false
    attributes :id, :name

    has_many :children, root: :taxons, serializer: Spree::TaxonNoChildrenSerializer
  end
end