

module Admin
    class PostController < ApplicationController
      # Inherits before_action from Admin::ApplicationController
  
      def index
       
        render json: { message: "Admin posts list" }
      end
  
      def show
        render json: { message: "Admin post details" }
      end
    end
  end
  