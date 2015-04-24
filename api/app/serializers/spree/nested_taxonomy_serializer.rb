module Spree
  class NestedTaxonomySerializer < BaseSerializer
    attributes :id, :name, :root_taxon

    def root_taxon
      Spree::NestedTaxonomyTaxonSerializer.new(object.root)
    end
  end
end
