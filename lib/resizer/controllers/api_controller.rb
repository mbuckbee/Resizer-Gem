# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module Resizer
  class APIController < BaseController
    @@instance = APIController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [String] image_url Required parameter: The URL to the source image
    # @param [Integer] width Required parameter: Width to resize to (in px)
    # @param [Integer] height Required parameter: Height to resize to (in px)
    # @return Mixed response from the API call
    def lookup(image_url, 
               width, 
               height)

      # Validate required parameters
      if image_url == nil
        raise ArgumentError.new "Required parameter 'image_url' cannot be nil."
      elsif width == nil
        raise ArgumentError.new "Required parameter 'width' cannot be nil."
      elsif height == nil
        raise ArgumentError.new "Required parameter 'height' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'image_url' => image_url,
        'width' => width,
        'height' => height,
        'api_key' => Configuration.api_key
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.get _query_url, headers: _headers

      # Endpoint error handling using HTTP status codes.
      if _response.code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate type
      _response.body.dup
    end
  end
end
