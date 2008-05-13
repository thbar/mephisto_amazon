module MephistoAmazon
  class ProductDrop < Liquid::Drop
    
    def initialize(product)
      @product = product
    end
  
    def asin
      @product.get('asin')
    end
  
    def author
      @product.get('author')
    end
  
    def title
      @product.get('title')
    end
    
    def image_url_large
      @product.get('largeimage/url')
    end

    def image_url_medium
      @product.get('mediumimage/url')
    end

    def image_url_small
      @product.get('smallimage/url')
    end
    
  end
end