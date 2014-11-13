class RestaurantsController < ApplicationController
  def index

    client = Yelp::Client.new({ consumer_key: "ixyt_bjUYeF_yt2econ_VA",
                                  consumer_secret: "XWksqiV25p5uJdIPohMoQR5MuCk",
                                  token: "-fRPXkOtQjFHyDs-fNwMYNXKX6VyUAqN",
                                  token_secret: "FdBq7SogS5R7NVyPPGRgCt2pb80"
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
