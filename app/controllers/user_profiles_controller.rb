class UserProfilesController < ApplicationController

  def index
    users = UserProfile.all
    render json: users
  end

  def show
    
    user_profile = UserProfile.find_by(user_id: params[:user_id])
    

    if user_profile
      render json: user_profile
    else
      render json: { error: 'User profile not found' }
    end
  end
    
  def create

    user_profile = UserProfile.create(user_profile_params)

    if user_profile.save
      render json: user_profile, status: 201
    else
      render json: { errors: user_profile.errors.full_messages }
    end
  end
  
  def update
    user_profile = UserProfile.find_by(user_id: params[:user_id])
    
    if user_profile.update(user_profile_params)
      render json: user_profile
    else
      render json: { errors: user_profile.errors.full_messages }
    end
  end

  def destroy
    user = UserProfile.find_by(id: params[:id])
    if user
      user.destroy
      render json: "Userprofile has been deleted"
    else
      render json: "Userprofile not found"
    end
  end
  
  private
  
  def user_profile_params
    params.require(:user_profile).permit(:user_id,:favourite_brand)
  end
end
  