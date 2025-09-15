module Admin
    class ApplicationController < ::ApplicationController
      # This runs before every action in admin controllers
      before_action :require_admin_token
  
      private
  
      def require_admin_token
        unless cookies[:admin_token].present?
          render json: { error: "Unauthorized" }, status: :unauthorized
        end
      end
    end
  end

  