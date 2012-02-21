require 'httparty'

module Phono
	class Client
		include HTTParty

		base_uri 'http://phono.phonoid.com/api'

		def initialize(api_key)
			@api_key  = api_key
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
					ref.to_sym => attributes
				})
			})
		end

		def update(ref, id, params = {})
			self.class.put("/#{ref}/#{id}.json", {
				:query => base_params.merge!({
					ref.to_sym => attributes
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
			{
				:api_key => @api_key
			}
		end
	end
end
