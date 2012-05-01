require 'httparty'
require 'httparty-icebox'
require 'active_support'

module Phono
  class Client
    include HTTParty
    include HTTParty::Icebox

    base_uri 'http://phono.phonoid.com/api'

    def initialize(api_key, cache_timeout = 60)
      @api_key  = api_key

      self.class.cache :timeout => cache_timeout
    end

    def all(ref, params = {})
      self.class.get("/#{ref}.json", {
        :query => base_params.merge!(params)
      })
    end

    def find(ref, id)
      self.class.get("/#{ref}/#{id}.json", {
        :query => base_params
      })
    end

    def create(ref, attributes = {})
      self.class.post("/#{ref}.json", {
        :query => base_params.merge!({
          ref.singularize.to_sym => attributes
        })
      })
    end

    def update(ref, id, params = {})
      self.class.put("/#{ref}/#{id}.json", {
        :query => base_params.merge!({
          ref.singularize.to_sym => attributes
        })
      })
    end

    def destroy(ref, id)
      self.class.delete("/#{ref}/#{id}.json", {
        :query => base_params
      })
    end

    protected

    def base_params
      { :api_key => @api_key }
    end
  end
end
