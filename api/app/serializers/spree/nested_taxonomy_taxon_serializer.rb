module Spree
  class NestedTaxonomyTaxonSerializer < BaseSerializer
    root false
    attributes :id, :name

    has_many :children, root: :taxons
  end
end
