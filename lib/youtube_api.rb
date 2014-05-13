require 'google/api_client'

module YouTubeApi
  
  class Query
    
    def initialize(options={})
      
      options = {
        :youtube_api_service_name => "youtube",
        :youtube_api_version => "v3"
      }.merge(options)
      
      @client = Google::APIClient.new(:key => options[:api_key], :authorization => nil) #Please provide :application_name and :application_version when initializing the client
      @youtube = @client.discovered_api(options[:youtube_api_service_name], options[:youtube_api_version])
      
    end
    
    def query(options={})
      
      options = {
        :part => 'id,snippet'
      }.merge(options)
      
      search_response = @client.execute!(
        :api_method => @youtube.search.list,
        :parameters => options
      )
      
      return search_response.data.items
      
    end
    
  end
  
end
