require 'mephisto_amazon'
require 'asin_search_macro'
require 'mephistoamazon/asin_search'
require 'mephistoamazon/search_delegate'
require 'mephistoamazon/product_drop'

require File.join(lib_path, 'plugin')

Liquid::Template.register_tag('asin_search', MephistoAmazon::AsinSearch)

FilteredColumn.macros[:asin_search_macro] = AsinSearchMacro
