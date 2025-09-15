class TempController < ApplicationController
    def index
        # Return hello world
        
        # Set temp cookie 
        cookies[:temp] = "Hello, world!"
        # Get temp cookie
        temp = cookies[:temp]

        # Get params 
        
        # Return temp cookie
        render json: { message: "Temp cookie: #{temp}" }
        
    end

    def show
        # Get params
        id = params[:id]
        # Return id
        render json: { message: "from show action Id: #{id}" }
    end

    def create 
        body = request.body.read
        # Get the url from the request
        url = request.url
        begin
            # Parse JSON with error handling
            body_json = JSON.parse(body)

            render json: { body: params, url: url}
        rescue JSON::ParserError => e
            render json: { error: "Invalid JSON: #{e.message}" }, status: :bad_request
        end
    end
end
