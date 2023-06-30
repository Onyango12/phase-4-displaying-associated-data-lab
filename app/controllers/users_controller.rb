class UsersController < ApplicationController

    def show
        user = find_users
        render json: user, except: [:created_at, :updated_at], include: {items: { except: [:created_at, :updated_at]}}
    end

    private

    def find_users
        User.find(params[:id])
    end


end