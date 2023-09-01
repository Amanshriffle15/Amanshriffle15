class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, status:200
  end
      
  def create
    user = User.new( user_params)
    if user.save
      render json: user, status: 201
    else
      render json: {error: "Error in creating"}
    end
  end
  
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, status: 200
    else
      render json: {error: "User not found"}
    end
  end
      
  def update
  
		user = User.find_by(id: params[:id])
      
    if user
      user.update(user_params)
      render json: user, status: 200
    else
      render json: {error: "User Not Found"}
    end
  end
  
  def destroy
    user = User.find_by(id: params[:id])
    if user
      user.destroy
      render json: "User has been deleted"
    else
      render json: "User not found", status:204
    end
  end

    
	private
  def user_params
    params.require(:user).permit([ :email, :first_name, :last_name, :user_type])
  end
end
  