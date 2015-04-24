module Spree
  class ImageSerializer < BaseSerializer
    attributes *Spree::Api::ApiHelpers.image_attributes

    def mini_url
      object.attachment(:mini)
    end

    def small_url
      object.attachment(:small)
    end

    def product_url
      object.attachment(:product)
    end

    def large_url
      object.attachment(:large)
    end

    def urls
      urls = Spree::Image.attachment_definitions[:attachment][:styles].map do |k,v|
        [k, v]
      end
      urls = Hash[urls]
    end
  end
end
