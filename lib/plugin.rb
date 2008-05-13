module Mephisto
  module Plugins
    class Amazon < Mephisto::Plugin
      author 'Thibaut Barrère, based on previous work from Nicholas Faiz.'
      version '1.2'
      notes "Include Amazon content within Mephisto articles or layouts. See the README."

      option :amazon_dev_token, "PUT-YOUR-DEV-TOKEN-HERE" 
    end
  end
end