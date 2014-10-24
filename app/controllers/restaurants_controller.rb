class RestaurantsController < ApplicationController
  def index

      client = Yelp::Client.new({ consumer_key: "sgdrfbdfgb",
                                  consumer_secret: "jdfhbgdfhkdfjbvlasdmslkjb",
                                  token: "-jdfshbvjhfdjlhbv",
                                  token_secret: "FjbsjnvjkfbvPbjv"
                                })
      query = {
        limit: 10,
        sort: 1,
        
        term: 'food',
        category_filter: 'restaurants'
      }

      @result = client.search("San Francisco", query)
       
  end

  def show
    @client = Yelp::Client.find(params[:id])
    @client = @client.clients.paginate(page: params[:page])
  end
  
end
