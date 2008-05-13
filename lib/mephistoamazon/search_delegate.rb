module MephistoAmazon
  class SearchDelegate
      
    def initialize
      Amazon::Ecs.options = {:aWS_access_key_id => Mephisto::Plugin[:amazon].amazon_dev_token}
    end
    
    def rlogger() RAILS_DEFAULT_LOGGER end
    
    def asin_search(asin)
      asin = asin.strip # trailing blank will make the request return nothing
      # use :country => :fr to achieve the lookup on the french catalogue
      products = Amazon::Ecs.item_lookup(asin, :response_group => 'Medium')
      unless products == nil?
        drop = to_drop products
      end
      drop
    end

    def to_drop(products)
      MephistoAmazon::ProductDrop.new(products.first_item)
    end
  end
end
