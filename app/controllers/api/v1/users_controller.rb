module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        render json: { success: true, users: users }
      end
    end
  end
end
