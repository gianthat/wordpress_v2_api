require 'httparty'
module WpApi::Content
 class Post

   def self.get_posts(**params)
      puts WpApi.configuration.base_uri
   	  params.merge!(WpApi.configuration.options)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/posts",
      	params,
      ).parsed_response
   end

   def self.get(id)
      HTTParty.get("#{WpApi.configuration.base_uri}/wp-json/wp/v2/posts/#{id}", 
      	WpApi.configuration.options,
      ).parsed_response
   end	

 end
end 	