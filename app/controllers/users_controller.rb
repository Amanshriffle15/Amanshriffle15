class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status:200
    end

    def create
        user = User.new(
            email: user_params[:email],
            first_name: user_params[:first_name],
            last_name: user_params[:last_name],
            user_type: user_params[:user_type],
             )

             if user.save
                render json: user, status: 200
             else
                render json: {
                    error: "Error in creating"
                }
            end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
          render json: user, status: 200
        else
          render json: {
            error: "User not found"
          }
        end
      end
    
    def destroy
        debugger
        user = User.find_by(id: params[:id])
        if user
            user.destroy
          render json: "User has been deleted"
        else
            render json: "User not found"
        end
      end

    private

    def user_params
        params.require(:user).permit(
            [
                :email,
                :first_name,
                :last_name,
                :user_type
            ]
        )
    end
end
