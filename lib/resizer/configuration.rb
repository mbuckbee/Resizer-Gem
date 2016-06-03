# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module Resizer
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://resizer.expeditedaddons.com'

    # Your API Key
    @api_key = ENV['RESIZER_API_KEY']

    # create the getters and setters
    class << self
      attr_accessor :base_uri
      attr_accessor :api_key
    end
  end
end
