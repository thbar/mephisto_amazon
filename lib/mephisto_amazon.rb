require 'amazon/ecs'

module MephistoAmazon  
  
  base =  "#{RAILS_ROOT}/vendor/plugins/mephisto_amazon/views/"
  Products_View = "#{base}products.liquid"
  Product_View = "#{base}product.liquid"
  Test_Search_View ="../views/test_search_results.liquid"
  Error_View = "#{base}error.liquid"
  
  def rlogger() RAILS_DEFAULT_LOGGER end
    
end
